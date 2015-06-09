try{
  Remove-BinFile 'Sudo' '..\lib\Sudo.1.0\bin\sudo.cmd'
  Remove-BinFile 'Sudo' '..\lib\Sudo.1.0\bin\sudo.vbs'
  Remove-BinFile 'Sudo' '..\lib\Sudo.1.0.1\bin\sudo.cmd'
  Remove-BinFile 'Sudo' '..\lib\Sudo.1.0.1\bin\sudo.vbs'
  Generate-BinFile 'Sudo' '..\lib\Sudo\bin\sudo.cmd'
  Write-ChocolateySuccess 'sudo'
} catch {
  Write-ChocolateyFailure 'sudo' "$($_.Exception.Message)"
  throw 
}
