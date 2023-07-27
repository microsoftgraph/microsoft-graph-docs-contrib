---
title: "accessReviewInstance: stopApplyDecisions"
description: "Stop the apply decision action on when accessReviewInstance when the decision is in the process of being applied."
author: "rahulsharm0210"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstance: stopApplyDecisions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Stop the apply decision action on a [accessReviewInstance](../resources/accessreviewinstance.md) when the decision is in the process of being applied. 
You can stop the apply decision action only when the review is created with autoapply and autoreview settings, and the remediation option to disable and delete users. When you call this API on a current instance of a recurrence, it will not affect future instances. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)	   | AccessReview.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported.				|
|Application						   | AccessReview.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST  /identityGovernance/accessReviews/definitions/{definition-id}/instances/{instance-id}/stopApplyDecisions
```

## Request headers
None

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204, No Content` response code. It does not return anything in the response body.

## Examples

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
