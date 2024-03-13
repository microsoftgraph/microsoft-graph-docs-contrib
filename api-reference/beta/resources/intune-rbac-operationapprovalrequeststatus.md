---
title: "operationApprovalRequestStatus enum type"
description: "Indicates the status of the Approval Request. The status of a request will change when an action is successfully performed on it, such as when it is `approved` or `rejected`, or when the request's expiration DateTime passes and the result is `expired`."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# operationApprovalRequestStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the status of the Approval Request. The status of a request will change when an action is successfully performed on it, such as when it is `approved` or `rejected`, or when the request's expiration DateTime passes and the result is `expired`.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Indicates that the request approval status is unknown, and that the status has not been assigned to the approval request.|
|needsApproval|1|Indicates that the approval request needs approval before the operation can be completed.|
|approved|2|Indicates that the approval request has been approved. The operation can now be completed.|
|rejected|3|Indicates that the approval request has been rejected. No further action can be taken to complete the operation or to modify the request.|
|cancelled|4|Indicates that the approval request has been cancelled by the request's requestor. No further action can be taken to complete the operation or to modify the request.|
|completed|5|Indicates that the approval request has been completed. This status is feature agnostic and does not indicate success or failure of the operation. No further action is necessary for the operation or to modify the request.|
|expired|6|Indicates that the approval request has expired. No further action can be taken to complete the operation or to modify the request. A new approval request must be made and approved in order to complete the operation.|
|unknownFutureValue|7|Evolvable enumeration sentinel value. Do not use.|
