---
title: "userDataSecurityAndGovernance: processContent"
toc.title: "userDataSecurityAndGovernance: processContent"
description: "Process content against data protection policies in the context of the current user."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# userDataSecurityAndGovernance: processContent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Process content against data protection policies in the context of the current user. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "userdatasecurityandgovernance-processcontent-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/userdatasecurityandgovernance-processcontent-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/dataSecurityAndGovernance/processContent
POST /users/{usersId}/dataSecurityAndGovernance/processContent
```

/me/dataSecurityAndGovernance/processContent supports delegated permissions only.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
| If-None-Match | Optional. This value is used by the API to determine if the policy state changed since the last call to the API. The value is from the Etag header returned from [protectionScopes compute](../api/userprotectionscopecontainer-compute.md)|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|contentToProcess|[processContentRequest](../resources/processcontentrequest.md)|Required. The object containing the content entries and metadata (activity, device, application) to be evaluated for the specified user.|

## Response headers

| Name          | Description   |
| :------------ | :------------ |
| ETag          | An indicator whether the configured policy state changed. If the policy state changed, the protectionScopeState property returned will be "modified" and the app needs to refresh by calling [protectionScopes compute](../api/userprotectionscopecontainer-compute.md). |

## Response

If successful, this action returns a `200 OK` response code and a [processContentResponse](../resources/processcontentresponse.md) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "userdatasecurityandgovernance.processcontent"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/dataSecurityAndGovernance/processContent
Content-Type: application/json

{
  "contentToProcess": {
        "contentEntries": [
            {
                "@odata.Type": "microsoft.graph.processFileMetadata",
                "identifier": "91e1ca70-6e5b-4120-abf0-472034ba05c3",
                "content":{
                    "@odata.Type": "microsoft.graph.binaryContent",
                    "data": "<some-binary-data>"
                },
                "name": "Example.docx",
                "createdDateTime": "2024-07-23T01:31:40.2020463Z",
                "updatedDateTime": "2024-09-17T13:45:21.0000000Z",
                "correlationId": "54689",
                "sequenceNumber": 1,
                "length": 17352,
                "isTruncated": false,
                "ownerId": "ffe1ca70-6e5b-4120-abf0-472034ba05d4",
                "customProperties": {
                    "Department": "Finance",
                    "ReviewerName": "John Smith"
                }
            }
        ],
        "activityMetadata": {
            "activity": "uploadFile",
            "applicationLocation": "bing.com"
        },
        "deviceMetadata": {
            "deviceType": "unmanaged",
            "operatingSystemSpecifications": {
                "operatingSystemPlatform": "windows",
                "operatingSystemVersion": "10.0.2.4"
            }
        },
        "integratedAppMetadata": {
            "name": "ContosoIsvApplication",
            "version": "1.2",
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/userdatasecurityandgovernanceprocesscontent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/userdatasecurityandgovernanceprocesscontent-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/userdatasecurityandgovernanceprocesscontent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/userdatasecurityandgovernanceprocesscontent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/userdatasecurityandgovernanceprocesscontent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/userdatasecurityandgovernanceprocesscontent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/userdatasecurityandgovernanceprocesscontent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.processContentResponse"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "protectionScopeState": "notModified",
    "policyActions": [
        {
            "action": "restrictAccess",
            "restrictionAction": "Block"
        }
    ],
    "processingErrors": [
        {
            "code": "OcrNotAvailable",
            "message": "OCR functionality isn't enabled for this user",
            "errorType": "permanent",
            "innerError": {
                    "code": "Permanent",
                    "clientRequestId": "6ebdb560-cb16-4176-94fa-e8d04ca054fd"
            }
        }
    ]
}
```
