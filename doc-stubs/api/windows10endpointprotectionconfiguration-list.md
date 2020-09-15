---
title: "List windows10EndpointProtectionConfiguration"
description: "Get a list of the windows10EndpointProtectionConfiguration objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List windows10EndpointProtectionConfiguration
Namespace: microsoft.graph

Get a list of the [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.windows10EndpointProtectionConfiguration not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [windows10EndpointProtectionConfiguration](../resources/windows10endpointprotectionconfiguration.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_windows10endpointprotectionconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/v1.0** Collection URI for microsoft.graph.windows10EndpointProtectionConfiguration not found
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windows10EndpointProtectionConfiguration)"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windows10EndpointProtectionConfiguration",
      "id": "21609d34-9d34-2160-349d-6021349d6021",
      "lastModifiedDateTime": "String (timestamp)",
      "createdDateTime": "String (timestamp)",
      "description": "String",
      "displayName": "String",
      "version": "Integer",
      "firewallBlockStatefulFTP": "Boolean",
      "firewallIdleTimeoutForSecurityAssociationInSeconds": "Integer",
      "firewallPreSharedKeyEncodingMethod": "String",
      "firewallIPSecExemptionsAllowNeighborDiscovery": "Boolean",
      "firewallIPSecExemptionsAllowICMP": "Boolean",
      "firewallIPSecExemptionsAllowRouterDiscovery": "Boolean",
      "firewallIPSecExemptionsAllowDHCP": "Boolean",
      "firewallCertificateRevocationListCheckMethod": "String",
      "firewallMergeKeyingModuleSettings": "Boolean",
      "firewallPacketQueueingMethod": "String",
      "firewallProfileDomain": {
        "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile"
      },
      "firewallProfilePublic": {
        "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile"
      },
      "firewallProfilePrivate": {
        "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile"
      },
      "defenderAttackSurfaceReductionExcludedPaths": [
        "String"
      ],
      "defenderGuardedFoldersAllowedAppPaths": [
        "String"
      ],
      "defenderAdditionalGuardedFolders": [
        "String"
      ],
      "defenderExploitProtectionXml": "Binary",
      "defenderExploitProtectionXmlFileName": "String",
      "defenderSecurityCenterBlockExploitProtectionOverride": "Boolean",
      "appLockerApplicationControl": "String",
      "smartScreenEnableInShell": "Boolean",
      "smartScreenBlockOverrideForFiles": "Boolean",
      "applicationGuardEnabled": "Boolean",
      "applicationGuardBlockFileTransfer": "String",
      "applicationGuardBlockNonEnterpriseContent": "Boolean",
      "applicationGuardAllowPersistence": "Boolean",
      "applicationGuardForceAuditing": "Boolean",
      "applicationGuardBlockClipboardSharing": "String",
      "applicationGuardAllowPrintToPDF": "Boolean",
      "applicationGuardAllowPrintToXPS": "Boolean",
      "applicationGuardAllowPrintToLocalPrinters": "Boolean",
      "applicationGuardAllowPrintToNetworkPrinters": "Boolean",
      "bitLockerDisableWarningForOtherDiskEncryption": "Boolean",
      "bitLockerEnableStorageCardEncryptionOnMobile": "Boolean",
      "bitLockerEncryptDevice": "Boolean",
      "bitLockerRemovableDrivePolicy": {
        "@odata.type": "microsoft.graph.bitLockerRemovableDrivePolicy"
      }
    }
  ]
}
```

