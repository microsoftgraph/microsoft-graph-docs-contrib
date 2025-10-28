---
title: "List agentIdentityBlueprint objects"
description: "Get a list of the agentIdentityBlueprint objects and their properties."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# List agentIdentityBlueprint objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the agentIdentityBlueprint objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.agentIdentityBlueprint not found
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [agentIdentityBlueprint](../resources/agentidentityblueprint.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_agentidentityblueprint"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.agentIdentityBlueprint not found
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentIdentityBlueprint"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.agentIdentityBlueprint",
      "id": "ff2a4f4e-945d-6918-40a8-844dcdc2d315",
      "deletedDateTime": "String (timestamp)",
      "api": {
        "@odata.type": "microsoft.graph.apiApplication"
      },
      "appCategory": "String",
      "appData": "String",
      "appId": "String",
      "appMetadata": {
        "@odata.type": "microsoft.graph.appMetadata"
      },
      "appRoles": [
        {
          "@odata.type": "microsoft.graph.appRole"
        }
      ],
      "authenticationBehaviors": {
        "@odata.type": "microsoft.graph.authenticationBehaviors"
      },
      "authenticationBehaviorsInternal": {
        "@odata.type": "microsoft.graph.Dictionary"
      },
      "billingInformation": {
        "@odata.type": "microsoft.graph.billingInformation"
      },
      "certification": {
        "@odata.type": "microsoft.graph.certification"
      },
      "createdByAppId": "String",
      "createdDateTime": "String (timestamp)",
      "description": "String",
      "disabledByMicrosoftStatus": "String",
      "isFallbackPublicClient": "Boolean",
      "isDisabled": "Boolean",
      "identifierUris": [
        "String"
      ],
      "defaultRedirectUri": "String",
      "displayName": "String",
      "expectsForwardableIdTokens": "Boolean",
      "groupMembershipClaims": "String",
      "info": {
        "@odata.type": "microsoft.graph.informationalUrl"
      },
      "isDeviceOnlyAuthSupported": "Boolean",
      "isManagementRestricted": "Boolean",
      "keyCredentials": [
        {
          "@odata.type": "microsoft.graph.keyCredential"
        }
      ],
      "legacyAllowPassthroughUsers": "Boolean",
      "lifecycle": {
        "@odata.type": "microsoft.graph.lifecycle"
      },
      "logo": "Stream",
      "managerApplications": [
        "Guid"
      ],
      "microsoftPolicyGroup": "Boolean",
      "migrationStatus": {
        "@odata.type": "microsoft.graph.appMigrationStatus"
      },
      "msaAppId": "String",
      "nativeAuthenticationApisEnabled": "String",
      "notes": "String",
      "optionalClaims": {
        "@odata.type": "microsoft.graph.optionalClaims"
      },
      "parentalControlSettings": {
        "@odata.type": "microsoft.graph.parentalControlSettings"
      },
      "passwordCredentials": [
        {
          "@odata.type": "microsoft.graph.passwordCredential"
        }
      ],
      "publicClient": {
        "@odata.type": "microsoft.graph.publicClientApplication"
      },
      "publisherDomain": "String",
      "requestSignatureVerification": {
        "@odata.type": "microsoft.graph.requestSignatureVerification"
      },
      "requiredResourceAccess": [
        {
          "@odata.type": "microsoft.graph.requiredResourceAccess"
        }
      ],
      "riskLevelThreat": {
        "@odata.type": "microsoft.graph.applicationRiskLevelThreat"
      },
      "samlMetadataUrl": "String",
      "serviceManagementReference": "String",
      "servicePrincipalLifecyclePolicy": "String",
      "servicePrincipalLockConfiguration": {
        "@odata.type": "microsoft.graph.servicePrincipalLockConfiguration"
      },
      "serviceTreeId": "String",
      "serviceType": "String",
      "signInAudience": "String",
      "signInAudienceRestrictions": {
        "@odata.type": "microsoft.graph.signInAudienceRestrictionsBase"
      },
      "spa": {
        "@odata.type": "microsoft.graph.spaApplication"
      },
      "tags": [
        "String"
      ],
      "targetScope": "String",
      "tokenEncryptionKeyId": "Guid",
      "trustedSubjectNameAndIssuers": [
        {
          "@odata.type": "microsoft.graph.trustedSubjectNameAndIssuer"
        }
      ],
      "uniqueName": "String",
      "verifiedPublisher": {
        "@odata.type": "microsoft.graph.verifiedPublisher"
      },
      "web": {
        "@odata.type": "microsoft.graph.webApplication"
      },
      "windows": {
        "@odata.type": "microsoft.graph.windowsApplication"
      },
      "onPremisesPublishing": {
        "@odata.type": "microsoft.graph.onPremisesPublishing"
      }
    }
  ]
}
```

