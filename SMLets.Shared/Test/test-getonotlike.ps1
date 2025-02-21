$VerboseResult = (Get-SCSMObject -Class (Get-SCSMClass System.Workitem.Incident$) -Filter "Description -NotLike 'Lorem ipsum dolor*'" -Verbose) 4>&1
foreach ($Row in $VerboseResult)
{
    if($Row -like '*!*'){"FAIL";Break}
}
"PASS"