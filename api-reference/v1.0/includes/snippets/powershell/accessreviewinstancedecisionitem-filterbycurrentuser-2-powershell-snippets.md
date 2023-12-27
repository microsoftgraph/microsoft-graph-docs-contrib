---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Invoke-MgFilterIdentityGovernanceAccessReviewDefinitionInstanceStageDecisionByCurrentUser -AccessReviewScheduleDefinitionId $accessReviewScheduleDefinitionId -AccessReviewInstanceId $accessReviewInstanceId -AccessReviewStageId $accessReviewStageId -Property "accessReviewId,reviewedDateTime,decision,justification,recommendation,reviewedBy,target"  -On $onId 

```