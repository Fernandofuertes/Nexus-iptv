sub Main()
    print ">>> Iniciando Main()"
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.SetMessagePort(m.port)

    scene = screen.CreateScene("HomeScene")
    print ">>> Escena HomeScene creada"

    screen.Show()
    print ">>> Pantalla mostrada"

    while true
        msg = wait(0, m.port)
        if type(msg) = "roSGScreenEvent"
            if msg.isScreenClosed() then
                print ">>> Pantalla cerrada"
                exit while
            end if
        end if
    end while
end sub