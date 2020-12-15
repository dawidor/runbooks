Workflow VMs-List-Workflow
{
  Write-Output "starting..."

  $VMs = GET-AzureVM

  if (!$VMs) {
      Write-Output "No VMs found"
  } else {
      Write-Output $VMs[0..9]
  }

  Write-Output "Ending..."
}

