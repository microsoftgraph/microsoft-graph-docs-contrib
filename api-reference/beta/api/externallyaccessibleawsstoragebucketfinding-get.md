---
title: "Get externallyAccessibleAwsStorageBucketFinding"
description: "Read the properties and relationships of an externallyAccessibleAwsStorageBucketFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get externallyAccessibleAwsStorageBucketFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externallyaccessibleawsstoragebucketfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/externallyaccessibleawsstoragebucketfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.externallyAccessibleAwsStorageBucketFinding
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_externallyaccessibleawsstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/MSxFeHRlcm5hbGx5QWNjZXNzaWJsZUF3c1N0b3JhZ2VCdWNrZXRGaW5kaW5nLDI3NjQ3OQ/findings/microsoft.graph.externallyAccessibleAwsStorageBucketFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externallyAccessibleAwsStorageBucketFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.externallyAccessibleAwsStorageBucketFinding/$entity",
    "id": "MSxFeHRlcm5hbGx5QWNjZXNzaWJsZUF3c1N0b3JhZ2VCdWNrZXRGaW5kaW5nLDI3NjQ3OQ",
    "createdDateTime": "2023-10-25T19:48:44.050499Z",
    "accessibility": "crossAccount",
    "accountsWithAccess": {
        "@odata.type": "#microsoft.graph.enumeratedAccountsWithAccess"
    },
    "storageBucket": {
        "id": "YXJuOmF3czpzMzo6OmNmLXRlbXBsYXRlcy0xYmZxY2w4c3h0OTUwLXVzLWVhc3QtMg",
        "externalId": "arn:aws:s3:::cf-templates-1bfqcl8sxt950-us-east-2",
        "displayName": "cf-templates-1bfqcl8sxt950-us-east-2",
        "resourceType": "bucket"
    }
}
```
