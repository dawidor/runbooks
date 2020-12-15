Workflow VMs-List-Workflow2
{
  Write-Output "starting..."

  $VMs = GET-AzureVM

  $SUBSC = Get-AzureSubscription

  Write-Output "Subs: $SUBSC"

  if (!$VMs) {
      Write-Output "No VMs found"
  } else {
      Write-Output $VMs[0..9]
  }

  Write-Output "Ending..."
}

