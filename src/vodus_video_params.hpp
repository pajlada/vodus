#ifndef VODUS_VIDEO_PARAMS_HPP_
#define VODUS_VIDEO_PARAMS_HPP_

struct Video_Params
{
    size_t fps;
    size_t width;
    size_t height;
    size_t font_size;
    Pixel32 background_colour;
    Pixel32 nickname_colour;
    Pixel32 text_colour;
    int bitrate;
};

void print1(FILE *stream, Video_Params params);

#endif  // VODUS_VIDEO_PARAMS_HPP_
