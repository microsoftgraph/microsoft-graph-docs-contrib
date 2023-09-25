---
title: "operationApprovalRequestStatus enum type"
description: "Status of the current Approval Request"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# operationApprovalRequestStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Status of the current Approval Request

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown Status|
|needsApproval|1|Approval request needs approval before the action can be completed.|
|approved|2|Approval request approved, action can now be completed.|
|rejected|3|Approval request rejected, action not approved and no further action can be taken.|
|cancelled|4|Approval request cancelled by the user, requiring no further action.|
|completed|5|Approval request completed, requiring no further action.|
|expired|6|Approval request has expired, a new approval must be made in order to complete this request.|
|unknownFutureValue|99|Placeholder for future Operation Approval Request Statuses.|
