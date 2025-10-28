---
title: "Update agentIdentityBlueprint"
description: "Update the properties of an agentIdentityBlueprint object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Update agentIdentityBlueprint

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an agentIdentityBlueprint object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH ** Entity URI for microsoft.graph.agentIdentityBlueprint not found
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|api|[apiApplication](../resources/apiapplication.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|appCategory|appCategoryState|**TODO: Add Description** Inherited from [application](../resources/application.md). The possible values are: `mdm`, `roamingSettingsSync`, `vpn`, `p2p`, `unknownFutureValue`. Optional.|
|appData|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|appId|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|appMetadata|[appMetadata](../resources/appmetadata.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|appRoles|[appRole](../resources/approle.md) collection|**TODO: Add Description** Inherited from [application](../resources/application.md). Required.|
|authenticationBehaviors|[authenticationBehaviors](../resources/authenticationbehaviors.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|authenticationBehaviorsInternal|[Dictionary](../resources/dictionary.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|billingInformation|[billingInformation](../resources/billinginformation.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|certification|[certification](../resources/certification.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|createdByAppId|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|disabledByMicrosoftStatus|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|isFallbackPublicClient|Boolean|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|isDisabled|Boolean|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|identifierUris|String collection|**TODO: Add Description** Inherited from [application](../resources/application.md). Required.|
|defaultRedirectUri|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|displayName|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|expectsForwardableIdTokens|Boolean|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|groupMembershipClaims|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|info|[informationalUrl](../resources/informationalurl.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|isDeviceOnlyAuthSupported|Boolean|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|isManagementRestricted|Boolean|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|**TODO: Add Description** Inherited from [application](../resources/application.md). Required.|
|legacyAllowPassthroughUsers|Boolean|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|lifecycle|[lifecycle](../resources/lifecycle.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|logo|Stream|**TODO: Add Description** Inherited from [application](../resources/application.md). Required.|
|managerApplications|Guid collection|**TODO: Add Description** Inherited from [application](../resources/application.md). Required.|
|microsoftPolicyGroup|Boolean|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|migrationStatus|[appMigrationStatus](../resources/appmigrationstatus.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|msaAppId|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|nativeAuthenticationApisEnabled|nativeAuthenticationApisEnabled|**TODO: Add Description** Inherited from [application](../resources/application.md). The possible values are: `none`, `all`, `unknownFutureValue`. Optional.|
|notes|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|optionalClaims|[optionalClaims](../resources/optionalclaims.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|parentalControlSettings|[parentalControlSettings](../resources/parentalcontrolsettings.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|**TODO: Add Description** Inherited from [application](../resources/application.md). Required.|
|publicClient|[publicClientApplication](../resources/publicclientapplication.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|publisherDomain|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|requestSignatureVerification|[requestSignatureVerification](../resources/requestsignatureverification.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|requiredResourceAccess|[requiredResourceAccess](../resources/requiredresourceaccess.md) collection|**TODO: Add Description** Inherited from [application](../resources/application.md). Required.|
|riskLevelThreat|[applicationRiskLevelThreat](../resources/applicationrisklevelthreat.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|samlMetadataUrl|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|serviceManagementReference|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|servicePrincipalLifecyclePolicy|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|servicePrincipalLockConfiguration|[servicePrincipalLockConfiguration](../resources/serviceprincipallockconfiguration.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|serviceTreeId|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|serviceType|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|signInAudience|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|signInAudienceRestrictions|[signInAudienceRestrictionsBase](../resources/signinaudiencerestrictionsbase.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Required.|
|spa|[spaApplication](../resources/spaapplication.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|tags|String collection|**TODO: Add Description** Inherited from [application](../resources/application.md). Required.|
|targetScope|appTargetScope|**TODO: Add Description** Inherited from [application](../resources/application.md). The possible values are: `production`, `microsoftIntegration`, `unknownFutureValue`. Optional.|
|tokenEncryptionKeyId|Guid|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|trustedSubjectNameAndIssuers|[trustedSubjectNameAndIssuer](../resources/trustedsubjectnameandissuer.md) collection|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|uniqueName|String|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|verifiedPublisher|[verifiedPublisher](../resources/verifiedpublisher.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|web|[webApplication](../resources/webapplication.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|windows|[windowsApplication](../resources/windowsapplication.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|
|onPremisesPublishing|[onPremisesPublishing](../resources/onpremisespublishing.md)|**TODO: Add Description** Inherited from [application](../resources/application.md). Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentidentityblueprint"
}
-->
``` http
PATCH https://graph.microsoft.com/beta** Entity URI for microsoft.graph.agentIdentityBlueprint not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentIdentityBlueprint",
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
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
```

