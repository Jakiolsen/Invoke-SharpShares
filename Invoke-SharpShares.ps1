function Invoke-SharpShares
{

    $a=New-Object IO.MemoryStream(,[Convert]::FromBAsE64String("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"))
    $decompressed = New-Object IO.Compression.GzipStream($a,[IO.Compression.CoMPressionMode]::DEComPress)
    $output = New-Object System.IO.MemoryStream
    $decompressed.CopyTo( $output )
    [byte[]] $byteOutArray = $output.ToArray()
    $RAS = [System.Reflection.Assembly]::Load($byteOutArray)

    $OldConsoleOut = [Console]::Out
    $StringWriter = New-Object IO.StringWriter
    [Console]::SetOut($StringWriter)

    [SharpShares.Program]::main([string[]]$args)

    [Console]::SetOut($OldConsoleOut)
    $Results = $StringWriter.ToString()
    $Results
  
}