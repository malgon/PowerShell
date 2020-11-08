function Get-FirstRecuringChar{

    param (
        [parameter(Mandatory = $true)] [string]$foo
    )
    
    $location = $foo.Length

    for($i=0; $i -le $foo.Length; $i++){
        $recurring = 0
        $letter=$foo[$i]
        for($x=$i+1;$x -le $foo.Length; $x++){
            if($letter -eq $foo[$x]){
                $recurring = $x;
                break;
            }
        } 
        if ($recurring -ne 0){
            if($recurring -lt $location){
                $location = $recurring
            }
        }
    }
    Write-Output $foo[$location]
         
}