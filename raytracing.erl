-module(raytracing).
-compile(export_all).

outputAnImage() ->
    ImageWidth = 256,
    ImageHeight = 256,

    {ok, Fd} = file:open("raytracing_chapter2.ppm", [write]),

    file:write(Fd, "P3"),
    io:format(Fd, "~n~p ~p~n255~n", [ImageWidth, ImageHeight]).