---
title: "Create cloudPcProvisioningPolicy"
description: "Create a new Cloud PC provisioning policy."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Create cloudPcProvisioningPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_post_provisioningpolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-post-provisioningpolicies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/provisioningPolicies
```

## Request headers

| Name          | Description                |
| :------------ | :------------------------  |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object.

The following table lists the properties that are required when you create the [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|description|String|The provisioning policy description.|
|displayName|String|The display name for the provisioning policy.|
|domainJoinConfigurations|[cloudPcDomainJoinConfiguration](../resources/cloudpcdomainjoinconfiguration.md) collection|Specifies a list ordered by priority on how Cloud PCs join Microsoft Entra ID.|
|imageDisplayName|String|The display name for the OS image you’re provisioning.|
|imageId|String|The ID of the operating system image you want to provision on Cloud PCs. The format for a gallery type image is: {publisher_offer_sku}. Supported values for each of the parameters are as follows:<ul><li>publisher: `Microsoftwindowsdesktop`.</li> <li>offer: `windows-ent-cpc`.</li> <li>sku: `21h1-ent-cpc-m365`, `21h1-ent-cpc-os`, `20h2-ent-cpc-m365`, `20h2-ent-cpc-os`, `20h1-ent-cpc-m365`, `20h1-ent-cpc-os`, `19h2-ent-cpc-m365` and `19h2-ent-cpc-os`.</li></ul>|
|imageType|cloudPcProvisioningPolicyImageType|The type of OS image (custom or gallery) you want to provision on Cloud PCs. Possible values are: `gallery`, `custom`.|
|provisioningType|[cloudPcProvisioningType](../resources/cloudpcprovisioningpolicy.md#cloudpcprovisioningtype-values)|Specifies the type of license used when provisioning Cloud PCs using this policy. By default, the license type is `dedicated` if the **provisioningType** isn't specified when you create the **cloudPcProvisioningPolicy**. You can't change this property after the **cloudPcProvisioningPolicy** was created. Possible values are: `dedicated`, `shared`, `unknownFutureValue`, `sharedByUser`, `sharedByEntraGroup`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `sharedByUser`, `sharedByEntraGroup`. The `shared` member is deprecated and will stop returning on April 30, 2027; going forward, use either the `sharedByUser` or `sharedByEntraGroup` members depending on the device configuration. |
|windowsSetting|[cloudPcWindowsSettings](../resources/cloudpcwindowssetting.md)|Indicates a specific Windows setting to configure during the creation of Cloud PCs for this provisioning policy. Supports `$select`. |
|domainJoinConfiguration (deprecated)|[cloudPcDomainJoinConfiguration](../resources/cloudpcdomainjoinconfiguration.md)|Specifies how Cloud PCs join Microsoft Entra ID. The **domainJoinConfiguration** property is deprecated and will stop returning data on May 31, 2024. Going forward, use the **domainJoinConfigurations** property.|
|onPremisesConnectionId (deprecated)|String|The ID of the cloudPcOnPremisesConnection. To ensure that Cloud PCs have network connectivity and that they domain join, choose a connection with a virtual network that the Cloud PC service validated it. The **onPremisesConnectionId** property is being deprecated and will stop returning data on May 31, 2024. In the future, use the **domainJoinConfigurations** property.|
|windowsSettings (deprecated)|[cloudPcWindowsSettings](../resources/cloudpcwindowssettings.md)|Specific Windows settings to configure during the creation of Cloud PCs for this provisioning policy. Supports `$select`. The **windowsSettings** property is deprecated and will stop returning data on January 31, 2024. Going forward, use the **windowsSetting** property.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_cloudpcprovisioningpolicy_from_cloudpcprovisioningpolicy"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
    "description": "Description value",
    "displayName": "Display Name value",
    "domainJoinConfiguration": {
        "domainJoinType": "hybridAzureADJoin",
        "onPremisesConnectionId": "16ee6c71-fc10-438b-88ac-daa1ccafffff"
    },
    "domainJoinConfigurations": [
      {
        "onPremisesConnectionId": "16ee6c71-fc10-438b-88ac-daa1ccafffff",
        "type": "hybridAzureADJoin"
      },
      {
        "onPremisesConnectionId": "26e16c71-f210-438b-88ac-d481ccafffff",
        "type": "hybridAzureADJoin"
      }
    ],
    "id": "1d164206-bf41-4fd2-8424-a3192d39ffff",
    "enableSingleSignOn": true,
    "imageDisplayName": "Windows-10 19h1-evd",
    "imageId": "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
    "imageType":"gallery",
    "onPremisesConnectionId": "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
    "windowsSettings": {
        "language": "en-US"
    },
    "windowsSetting": {
        "locale": "en-US"
    },
    "provisioningType": "dedicated"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-cloudpcprovisioningpolicy-from-cloudpcprovisioningpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-cloudpcprovisioningpolicy-from-cloudpcprovisioningpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-cloudpcprovisioningpolicy-from-cloudpcprovisioningpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-cloudpcprovisioningpolicy-from-cloudpcprovisioningpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-cloudpcprovisioningpolicy-from-cloudpcprovisioningpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-cloudpcprovisioningpolicy-from-cloudpcprovisioningpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-cloudpcprovisioningpolicy-from-cloudpcprovisioningpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-cloudpcprovisioningpolicy-from-cloudpcprovisioningpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcProvisioningPolicy"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",
  "description": "Description value",
  "displayName": "Display Name value",
  "domainJoinConfiguration": {
      "onPremisesConnectionId": "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
      "type": "hybridAzureADJoin"
  },
  "domainJoinConfigurations": [
    {
      "onPremisesConnectionId": "16ee6c71-fc10-438b-88ac-daa1ccafffff",
      "type": "hybridAzureADJoin"
    },
    {
      "onPremisesConnectionId": "26e16c71-f210-438b-88ac-d481ccafffff",
      "type": "hybridAzureADJoin"
    }
  ],
  "enableSingleSignOn": true,
  "id": "1d164206-bf41-4fd2-8424-a3192d39ffff",
  "imageDisplayName": "Windows-10 19h1-evd",
  "imageId": "MicrosoftWindowsDesktop_Windows-10_19h1-evd",
  "imageType":"gallery",
  "onPremisesConnectionId": "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",
  "windowsSettings": {
    "language": "en-US"
  },
  "windowsSetting": {
      "locale": "en-US"
  },
  "managedBy": "windows365",
  "provisioningType": "dedicated"
}
```
