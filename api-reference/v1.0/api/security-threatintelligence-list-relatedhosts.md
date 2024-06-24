---
title: "List relatedHosts"
description: "Get the list of related host resources associated with an sslCertificate."
author: "vinny2020"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List relatedHosts

Namespace: microsoft.graph.security


[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]


Get a list of related [host](../resources/security-host.md) resources associated with an [sslCertificate](../resources/security-sslcertificate.md).


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sslcertificate_list_relatedhosts" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|ThreatIntelligence.Read.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|ThreatIntelligence.Read.All|Not available.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET security/threatIntelligence/sslCertificates/{sslCertificateId}/relatedHosts
```
## Optional query parameters

This method supports the `$count`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.host](../resources/security-host.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_relatedHost",
  "sampleKeys": ["MDJjODMzNDIzYzYwOTIzNjM1YTA0OTRhMmI2NThjYWM5NDFmM2FmMA=="]
}
-->
``` http
GET https://graph.microsoft.com/1.0/security/threatIntelligence/sslCertificates/MDJjODMzNDIzYzYwOTIzNjM1YTA0OTRhMmI2NThjYWM5NDFmM2FmMA==/relatedHosts
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.host)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.security.host)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.ipAddress",
      "id": "20.112.250.133",
      "firstSeenDateTime": null,
      "lastSeenDateTime": null,
      "countryOrRegion": null,
      "netblock": null,
      "autonomousSystem": null,
      "hostingProvider": null
    },
    {
      "@odata.type": "#microsoft.graph.security.ipAddress",
      "id": "20.231.239.246",
      "firstSeenDateTime": null,
      "lastSeenDateTime": null,
      "countryOrRegion": null,
      "netblock": null,
      "autonomousSystem": null,
      "hostingProvider": null
    },
    {
      "@odata.type": "#microsoft.graph.security.ipAddress",
      "id": "20.236.44.162",
      "firstSeenDateTime": null,
      "lastSeenDateTime": null,
      "countryOrRegion": null,
      "netblock": null,
      "autonomousSystem": null,
      "hostingProvider": null
    }
  ]
}
```
