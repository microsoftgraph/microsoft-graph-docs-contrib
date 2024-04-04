---
title: "List forwardingProfiles"
description: "Retrieve a list of forwarding profiles."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.topic: reference
---

# List forwardingProfiles
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of forwarding profiles.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_networkaccessroot_list_forwardingprofiles" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-networkaccessroot-list-forwardingprofiles-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/forwardingProfiles/
```

## Optional query parameters
This method supports the `$expand` [OData query parameter](/graph/query-parameters) to help customize the response.


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_forwardingprofile"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/forwardingProfiles
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-forwardingprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-forwardingprofile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-forwardingprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-forwardingprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-forwardingprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-forwardingprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-forwardingprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.forwardingProfile"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/forwardingProfiles",
    "value": [
        {
            "trafficForwardingType": "internet",
            "priority": 2,
            "id": "8a263132-cea1-4435-b255-0c7ab024e3ad",
            "name": "Internet traffic forwarding profile",
            "description": "Default traffic forwarding profile for Internet traffic acquisition. Assign the profile to client or branch offices to acquire Internet traffic for Zero Trust Network Access.Internet traffic forwarding profile will exclude all endpoints defined in Microsoft 365 traffic forwarding profile.",
            "state": "disabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-05-24T05:06:18Z",
            "associations": [
                {
                    "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
                    "branchId": "929a620e-fbfe-4041-bcc1-56431ca99606"
                }
            ]
        },
        {
            "trafficForwardingType": "private",
            "priority": 1,
            "id": "61addd7c-33ca-4737-93cc-2a3adc933562",
            "name": "Private access traffic forwarding profile",
            "description": "Default traffic forwarding profile for Private access traffic acquisition. Assign the profile to client or branch offices to acquire Private access traffic for Zero Trust Network Access.",
            "state": "disabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-05-24T05:06:18Z",
            "associations": []
        },
        {
            "trafficForwardingType": "m365",
            "priority": 0,
            "id": "e1a17ea9-3d4e-4ea1-952e-17b9aac97ef0",
            "name": "Microsoft 365 traffic forwarding profile",
            "description": "Default traffic forwarding profile for Microsoft 365 traffic acquisition. Assign the profile to client or branch offices to acquire Microsoft 365 traffic for Zero Trust Network Access.",
            "state": "enabled",
            "version": "1.0.0",
            "lastModifiedDateTime": "2023-05-24T05:06:24Z",
            "associations": []
        }
    ]
}
```


