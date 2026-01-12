---
title: "Get ipApplicationSegment"
description: "Read the properties and relationships of an ipApplicationSegment object."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 12/19/2024
---

# Get ipApplicationSegment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [ipApplicationSegment](../resources/ipapplicationsegment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "ipapplicationsegment_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/ipapplicationsegment-get-permissions.md)]

[!INCLUDE [rbac-app-proxy-read](../includes/rbac-for-apis/rbac-app-proxy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /applications/{applicationObjectId}/onPremisesPublishing/segmentsConfiguration/microsoft.graph.ipSegmentConfiguration/applicationSegments/{applicationSegment-id}
```

## Optional query parameters

This method supports the `$expand` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [ipApplicationSegment](../resources/ipapplicationsegment.md) object in the response body.

## Examples

### Example 1: Retrieve the basic ipApplicationSegments object

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_ipapplicationsegment"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications/dcc40202-6223-488b-8e64-28aa1a803d6c/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/ApplicationSegments/df8cb1a6-4bbf-4da3-8f85-fe2fc439ab80
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-ipapplicationsegment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ipApplicationSegment"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "destinationHost": "test-check-ch.contoso.com",
    "destinationType": "fqdn",
    "port": 0,
    "ports": [
        "20-20"
    ],
    "protocol": "tcp",
    "id": "df8cb1a6-4bbf-****-8f85-fe2fc***ab80"
}
```

### Example 2: Retrieve ipApplicationSegments and expand the application object

#### Request

```http
GET https://graph.microsoft.com/beta/applications/dcc40202-6223-488b-8e64-28aa1a803d6c/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/ApplicationSegments/df8cb1a6-4bbf-4da3-8f85-fe2fc439ab80?$expand=application
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ipApplicationSegment"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "destinationHost": "test.porto",
    "destinationType": "fqdn",
    "port": 0,
    "ports": [
        "20-20"
    ],
    "protocol": "udp",
    "id": "ed19c1bb-a4db-4d05-b8b3-3d79f8dbb666",
    "application": {
        "id": "618d636e-4978-****-8c0b-459ac982c391",
        "appId": "15961fc8-797f-****-ab6e-04ff1e2d03ad",
        "identifierUris": [
            "api://15961fc8-797f-4278-ab6e-04ff1e2d03ad"
        ],
        "signInAudience": "AzureADMyOrg",
        "tags": [
            "IsAccessibleViaZTNAClient",
            "HideApp",
            "PrivateAccessNonWebApplication"
        ],
        "onPremisesPublishing": {
            "externalUrl": "api://15961fc8-797f-****-ab6e-04ff1e2d03ad/",
            "internalUrl": "api://15961fc8-797f-****-ab6e-04ff1e2d03ad/",
            "alternateUrl": null,
            "externalAuthenticationType": "passthru",
            "isTranslateHostHeaderEnabled": false,
            "isTranslateLinksInBodyEnabled": false,
            "isOnPremPublishingEnabled": true,
            "isHttpOnlyCookieEnabled": false,
            "isSecureCookieEnabled": false,
            "isPersistentCookieEnabled": false,
            "isBackendCertificateValidationEnabled": false,
            "applicationServerTimeout": "Default",
            "useAlternateUrlForTranslationAndRedirect": false,
            "applicationType": "NonWebApp",
            "isStateSessionEnabled": false,
            "isAccessibleViaZTNAClient": true,
            "isDnsResolutionEnabled": false,
            "verifiedCustomDomainCertificatesMetadata": null,
            "verifiedCustomDomainKeyCredential": null,
            "verifiedCustomDomainPasswordCredential": null,
            "singleSignOnSettings": null,
            "segmentsConfiguration": null,
            "onPremisesApplicationSegments": []
        }
    }
}
```



