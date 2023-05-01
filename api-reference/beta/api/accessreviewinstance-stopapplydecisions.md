---
title: "accessReviewInstance: stopApplyDecisions"
description: "Stops apply decision Action on accessReviewInstance which is in applying state."
author: "rahulsharm0210"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstance: stopApplyDecisions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Stops the applyDecision on a currently completed [accessReviewInstance](../resources/accessreviewinstance.md). 
The API is only applicable to the instances in applying state. The review must be created with autoApply and autoReview along with remediation option to disable and delete users.
Stopping the applyDecision on an instance will not effect future instances. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)	   | AccessReview.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported				|
|Application						   | AccessReview.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

````msgraph-interactive
POST  /identityGovernance/accessReviews/definitions/{definition-id}/instances/{instance-id}/stopApplyDecisions
```

## Request headers
None

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204, No Content` response code. It does not return anything in the response body.

## Examples

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "stop_applyDecisions"
}
-->
``` http
POST  https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/2b83cc42-09db-46f6-8c6e-16fec466a82d/instances/5d431f4b-56f2-4a50-938b-fb1e4e2c91b9/stopApplyDecisions
```
---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#page.annotation",
  "description": "Stop accessReviewInstance",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->