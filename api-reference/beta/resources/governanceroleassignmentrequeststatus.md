---
title: governanceRoleAssignmentRequestStatus resource type
description: Represents the status of the governanceRoleAssignmentRequest.
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: entra-id-governance
author: rkarim-ms
ms.date: 03/21/2024
---

# governanceRoleAssignmentRequestStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of the [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md).

## Properties

| Property      | Type                                            | Description                                                                                                                                                                                                                                                                                                                                                                                     |
| :------------ | :---------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| status        | String                                          | The status of the role assignment request. The value can be `InProgress` or `Closed`.                                                                                                                                                                                                                                                                                                           |
| subStatus     | String                                          | The sub status of the role assignment request. The values can be `Accepted`, `PendingEvaluation`, `Granted`, `Denied`, `PendingProvisioning`, `Provisioned`, `PendingRevocation`, `Revoked`, `Canceled`, `Failed`, `PendingApprovalProvisioning`, `PendingApproval`, `FailedAsResourceIsLocked`, `PendingAdminDecision`, `AdminApproved`, `AdminDenied`, `TimedOut`, and `ProvisioningStarted`. |
| statusDetails | [keyValue](../resources/keyvalue.md) collection | The details of the status of the role assignment request. It represents the evaluation results of different rules.                                                                                                                                                                                                                                                                              |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.governanceRoleAssignmentRequestStatus"
}-->

```json
{
  "status": "String",
  "subStatus": "String",
  "statusDetails": [{"@odata.type": "microsoft.graph.keyValue"}],
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "governanceRoleAssignmentRequestStatus",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
