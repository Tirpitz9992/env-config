$env:HTTP_PROXY="http://127.0.0.1:7890"
$env:HTTPS_PROXY="http://127.0.0.1:7890"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";C:\Program Files\NuGet" +
	  ";$env:UserProfile\.cargo\bin"
Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG = "C:\Users\starship.toml"

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

$Env:PATH += ";C:\Users\Tiz\AppData\Local\Android\Sdk\platform-tools"