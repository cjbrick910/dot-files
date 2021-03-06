/*
 
volume_exec.c
 
Adapted from: https://github.com/SushiDesu-zz/dwmstat/blob/master/dwmstat.c
 
For Conky.
 
Needs: libasound2-dev (or at least that is the name of the relevant package for Debian/Ubuntu/Mint).
Needs: to be compiled with this flag: -lasound
 
To compile:
gcc -O3 volume_exec.c -o volume_exec -liw -lasound
*/
 
#include <unistd.h>
#include <fcntl.h>
#include <alsa/asoundlib.h>
 
#define VOL_CH  "Master"
 
int main( void )
{
    long max = 0, min = 0, vol = 0;
    int ret = 0, mute = 0;
 
    snd_mixer_t *handle;
    snd_mixer_elem_t *pcm_mixer, *mas_mixer;
    snd_mixer_selem_id_t *vol_info, *mute_info;
 
    snd_mixer_open( &handle, 0);
    snd_mixer_attach( handle, "default" );
    snd_mixer_selem_register( handle, NULL, NULL );
    snd_mixer_load( handle );
    snd_mixer_selem_id_malloc( &vol_info );
    snd_mixer_selem_id_malloc( &mute_info );
    snd_mixer_selem_id_set_name( vol_info, VOL_CH );
    snd_mixer_selem_id_set_name( mute_info, VOL_CH );
    pcm_mixer = snd_mixer_find_selem( handle, vol_info );
    mas_mixer = snd_mixer_find_selem( handle, mute_info );
 
    snd_mixer_selem_get_playback_volume_range(( snd_mixer_elem_t *)pcm_mixer, &min, &max );
    snd_mixer_selem_get_playback_volume(( snd_mixer_elem_t *)pcm_mixer, SND_MIXER_SCHN_MONO, &vol );
    snd_mixer_selem_get_playback_switch( mas_mixer, SND_MIXER_SCHN_MONO, &mute );
 
    if ( handle ) {
        snd_mixer_close( handle );
    } else {
        ret = 1;
    }
 
    if ( mute == 0 ) {
        // MUTED
        printf( "%s", "x" );
    } else {
        // NOT MUTED
        long vol_percent = vol * 100 / ( int )max;
        vol_percent++;
        printf( "%ld%%", vol_percent );
    }
 
    return ret;
}
 
// EOF
