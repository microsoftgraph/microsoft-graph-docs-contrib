---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Get-MgIdentityGovernanceLifecycleWorkflowRun -WorkflowId $workflowId -RunId $runId -Property "id,failedTasksCount,failedUsersCount,processingStatus,totalTasksCount,totalUnprocessedTasksCount,totalUsersCount" 

```