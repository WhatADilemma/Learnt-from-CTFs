Function Clipboard$(Optional s$)
    Dim v: v = s
    With CreateObject("htmlfile")
    With .parentWindow.clipboardData
        Select Case True
            Case Len(s): .setData "text", v
            Case Else: Clipboard = .GetData("text")
        End Select
    End With
    End With
    
End Function

'In VBA scripting for the newbies to this ' < this is a comment line like the # symbol in Python