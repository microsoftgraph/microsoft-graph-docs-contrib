---
title: "List resources (for an AWS authorization system)"
description: "List the awsAuthorizationSystemResource objects and their properties for a provided AWS authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List resources (for an AWS authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) objects and their properties for a provided AWS authorization system.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) objects in the response body.

## Examples

### Request
The following example shows a request to list the AWS resources for a provided AWS authorization system.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awsauthorizationsystemresource"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-awsauthorizationsystemresource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awsauthorizationsystemresource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsAuthorizationSystemResource)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/resources",
  "value": [
    {
      "id": "YXJuOmF3czpzMzo6OnRlc3RidWNrZXQ=",
      "externalId": "arn:aws:s3:::testbucket",
      "displayName": "testbucket",
      "resourceType": "bucket",
      "service": {
        "id": "s3"
      }
    },
    {
      "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjEyMzQ1Njc4OTAxMjppbnN0YW5jZS9pLTA0ZjVkNWJmOGUwNDZiZDAw",
      "externalId": "arn:aws:ec2:us-west-2:123456789012:instance/i-04f5d5bf8e046bd00",
      "displayName": "staging-instance",
      "resourceType": "instance",
      "service": {
        "id": "ec2"
      }
    }
  ]
}
```
