Param(
    [switch]$cleanUp,
    [string]$file
)
$repoPath = (Get-Location).Path
$downloadedApiDoctor = $false
$downloadedNuGet = $false
$downloadedCsc = $false

Write-Host "Repository location: ", $repoPath
Write-Host "GitHub Token: ", $(GITHUB_TOKEN)
Write-Host "Pull Request: ", $(SYSTEM_PULLREQUEST_PULLREQUESTNUMBER)


# Check for ApiDoctor in path
$apidoc = $null

if (Get-Command "apidoc.exe" -ErrorAction SilentlyContinue) {
    $apidoc = (Get-Command "apidoc.exe").Source
} 
else {
	# Download apidoctor from GitHub
	$apidocPath = Join-Path $repoPath -ChildPath "apidoctor"
	New-Item -ItemType Directory -Force -Path $apidocPath
	
	Write-Host "Cloning apidoctor from GitHub"
	& git clone -b errorLog https://github.com/millicentachieng/apidoctor.git
	$downloadedApiDoctor = $true
    	
	# Get nuget
	$nugetPath = $null
	if (Get-Command "nuget.exe" -ErrorAction SilentlyContinue) {
        # Use the existing nuget.exe from the path
        $nugetPath = (Get-Command "nuget.exe").Source
    }
    else
    {
        # Download nuget.exe from the nuget server if required
        $nugetPath = Join-Path $repoPath -ChildPath "nuget.exe"
        $nugetExists = Test-Path $nugetPath
        if ($nugetExists -eq $false) {
            Write-Host "nuget.exe not found. Downloading from dist.nuget.org"
            Invoke-WebRequest -Uri "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" -OutFile $nugetPath
        }
        $downloadedNuGet = $true
    }
	
	$packagesPath = Join-Path $repoPath -ChildPath "csc"
    New-Item -ItemType Directory -Force -Path $packagesPath
	
	# Download C# compiler from nuget
	Write-Host "Running nuget.exe from ", $nugetPath
    $nugetParams = "install", "Microsoft.Net.Compilers", "-OutputDirectory", $packagesPath, "-NonInteractive", "-DisableParallelProcessing"
    & $nugetPath $nugetParams
	
	if ($LastExitCode -ne 0) { 
        # nuget error, so we can't proceed
        Write-Host "Error installing Microsoft.Net.Compilers from NuGet. Aborting."
        Remove-Item $nugetPath
        exit $LastExitCode
    }
	
	# Get path to csc.exe
	$pkgfolder = Get-ChildItem -LiteralPath $packagesPath -Directory | Where-Object {$_.name -match "Microsoft.Net.Compilers"}
    $csc = [System.IO.Path]::Combine($packagesPath, $pkgfolder.Name, "tools\csc.exe")
    $downloadedCsc = $true
	
    # Restore all Nuget packages in apidoctor solution
    $nugetParams = "restore", "$apidocPath\ApiDoctor.sln"
    & $nugetPath $nugetParams
    
	# Compile apidoctor
	$cscParams = "-define:DEBUG", "-optimize", "-out:apidoc.exe", "-recurse:$apidocPath\*.cs"
	& $csc $cscParams
			
	# Get the path to the apidoctor.exe
	$apidoc = (Get-Command "apidoc.exe").Source
}

$lastResultCode = 0

# run validation at the root of the repository
$appVeyorUrl = $env:APPVEYOR_API_URL

$parms = "check-all", "--path", $repoPath, "--base-branch", "master", "--pull", 1
if ($appVeyorUrl -ne $null)
{
    $parms = $parms += "--appveyor-url", $appVeyorUrl
}

$parms = $parms += "--github-token", $env:GITHUB_TOKEN

& $apidoc $parms

if ($LastExitCode -ne 0) { 
    $lastResultCode = $LastExitCode
}

# Clean up the stuff we downloaded
if ($cleanUp -eq $true) {
    if ($downloadedNuGet -eq $true) {
        Remove-Item $nugetPath 
    }
    if ($downloadedApiDoctor -eq $true) {
        Remove-Item $apidocPath -Recurse
    }
	if ($downloadedCsc -eq $true) {
        Remove-Item $packagesPath -Recurse
    }
}

if ($lastResultCode -ne 0) {
    Write-Host "Errors were detected. This build failed."
    exit $lastResultCode
}
