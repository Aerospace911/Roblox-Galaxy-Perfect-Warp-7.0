beatdrop()
{
    SoundPlay, C:\Users\Yname\Desktop\Perfect Warp 7.0\BeatDrop.wav
    return
}

^!r::
    Reload
return

NumpadAdd::
WinActivate, Roblox
InputBox, Distance, Enter distance,, 30, 150



if (Distance > 0)
{
    ttw := Round(Log(Distance*1000 / 201.384) / Log(1.75959), 4)
    CoordMode, Pixel, Screen
    Loop
    {
        PixelGetColor, color1, 921, 616
        PixelGetColor, color2, 921, 616
        if (color1 = 0x00AA00 and color2 = 0x00AA00)
        {
            Sleep, ((ttw * 1000) - 6537)
            beatdrop() ; Call the BeatDrop function to play the sound
            return
        }
        Sleep, 1
    }
}
