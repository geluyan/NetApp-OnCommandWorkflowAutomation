[CmdletBinding()]
Param(
	[Parameter(Mandatory=$True)]
	[string]$OnCommandWorkflowAutomation
)

New-NetFirewallRule -DisplayName "OnCommand Workflow Automation (HTTP)" -Action Allow -Direction Inbound -Enabled True -Profile Any -Protocol TCP -LocalPort 80 -Group "NetApp OnCommand Workflow Automation" -RemoteAddress $OnCommandWorkflowAutomation
New-NetFirewallRule -DisplayName "OnCommand Workflow Automation (HTTPS)" -Action Allow -Direction Inbound -Enabled True -Profile Any -Protocol TCP -LocalPort 443 -Group "NetApp OnCommand Workflow Automation" -RemoteAddress $OnCommandWorkflowAutomation
New-NetFirewallRule -DisplayName "OnCommand Workflow Automation (MySQL)" -Action Allow -Direction Inbound -Enabled True -Profile Any -Protocol TCP -LocalPort 3306 -Group "NetApp OnCommand Workflow Automation" -RemoteAddress $OnCommandWorkflowAutomation
