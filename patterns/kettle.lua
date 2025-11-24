SetName("Kettle")

-- drift comp settings 
crFDC = 0.3 * 4 + Pattern.Alignment -- corner FDC
dwAlign = 1.5 * 4 + Pattern.Alignment-- diamond wall align
hwAlign = 2 * 4 + Pattern.Alignment -- honey wall align

-- advanced settings
l = 6.25 * 4 -- long walk
s = l / 4 -- short walk
h = l / 2 -- half of long walk

-- shape one (straight)
Walk(Left, h)
Sleep(20)
Walk(Forward, s)
Sleep(20)
Walk(Right, l)
Sleep(20)
Walk(Forward, s)
Sleep(20)
Walk(Left, l)
Sleep(20)

SetYaw(7)

WalkAsync(Backward, l)
Walk(Left, l)
Sleep(20)

if dwAlign > 0 then
    WalkAsync(Backward, dwAlign + 2)
    Walk(Left, dwAlign + 2)
    Sleep(20)
    WalkAsync(Forward, dwAlign)
    Walk(Right, dwAlign)
    Sleep(20)
end

WalkAsync(Backward, s)
Walk(Right, s)
Sleep(20)
WalkAsync(Forward, l)
Walk(Right, l)
Sleep(20)
WalkAsync(Backward, s)
Walk(Right, s)
Sleep(20)
WalkAsync(Backward, h)
Walk(Left, h)
Sleep(20)

SetYaw(0)

Walk(Backward, h)
Sleep(20)
Walk(Right, s)
Sleep(20)
Walk(Forward, l)
Sleep(20)
Walk(Right, s)
Sleep(20)

if hwAlign > 0 then
    Walk(Right, hwAlign + 2)
    Sleep(20)
    Walk(Left, hwAlign)
    Sleep(20)
end

Walk(Backward, l)
Sleep(20)

SetYaw(6)

Walk(Forward, l)
Sleep(20)
Walk(Right, s)
Sleep(20)
Walk(Backward, l)
Sleep(20)
Walk(Right, s)
Sleep(20)
Walk(Forward, h)
Sleep(20)

SetYaw(0)

-- shape two (diagonal)
WalkAsync(Forward, h)
Walk(Left, h)
Sleep(20)
WalkAsync(Forward, s)
Walk(Right, s)
Sleep(20)
WalkAsync(Backward, l)
Walk(Right, l)
Sleep(20)
WalkAsync(Forward, s)
Walk(Right, s)
Sleep(20)
WalkAsync(Forward, l)
Walk(Left, l)
Sleep(20)

SetYaw(7)

Walk(Left, l)
Sleep(20)
Walk(Backward, s + crFDC)
Sleep(20)
Walk(Right, l)
Sleep(20)
Walk(Backward, s + crFDC)
Sleep(20)
Walk(Left, h)
Sleep(20)

SetYaw(0)

WalkAsync(Backward, h)
Walk(Left, h)
Sleep(20)
WalkAsync(Backward, s)
Walk(Right, s)
Sleep(20)
WalkAsync(Forward, l)
Walk(Right, l)
Sleep(20)
WalkAsync(Backward, s)
Walk(Right, s)
Sleep(20)
WalkAsync(Backward, l)
Walk(Left, l)
Sleep(20)

SetYaw(6)

WalkAsync(Forward, l)
Walk(Right, l)
Sleep(20)
WalkAsync(Backward, l)
Walk(Left, l)
Sleep(20)
WalkAsync(Backward, s)
Walk(Right, s)
Sleep(20)
WalkAsync(Forward, h)
Walk(Right, h)
Sleep(50)

SetYaw(0)