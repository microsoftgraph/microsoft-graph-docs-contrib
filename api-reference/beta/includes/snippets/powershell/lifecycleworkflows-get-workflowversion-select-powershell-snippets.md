---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

Get-MgBetaIdentityGovernanceLifecycleWorkflowVersion -WorkflowId $workflowId -WorkflowVersionVersionNumber $workflowVersionVersionNumber -Property "category,displayName,versionNumber,executionConditions" -ExpandProperty "tasks" 

```