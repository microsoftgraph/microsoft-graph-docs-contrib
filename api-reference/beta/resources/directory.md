---
title: "directory resource type (deleted items)"
description: "Deleted items remain available to restore for up to 30 days. After 30 days, the items are permanently deleted."
ms.localizationpriority: medium
author: "keylimesoda"
ms.date: 12/31/2024
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
toc.title: Deleted item
---

# directory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a deleted item in the directory. A deleted item is sent to the deleted items "container." Deleted items remain available to restore for up to 30 days. After 30 days, the items are permanently deleted.

Currently, deleted items functionality is supported for the following resources:
- [administrative unit](../resources/administrativeunit.md)
- [application](application.md)
- [certificateAuthorityDetail](../resources/certificateauthoritydetail.md)
- [certificateBasedAuthPki](../resources/certificatebasedauthpki.md)
- [externalUserProfile](../resources/externaluserprofile.md)
- [group](group.md)
- [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md)
- [servicePrincipal](../resources/serviceprincipal.md)
- [user](user.md)

Inherits from [entity](entity.md).

## Methods

| Method                                                                                     | Return Type                                      | Description                            |
| :----------------------------------------------------------------------------------------- | :----------------------------------------------- | :------------------------------------- |
| [List](../api/directory-deleteditems-list.md)                                | [directoryObject](directoryobject.md) collection | Gets a list of recently deleted items. |
| [Get](../api/directory-deleteditems-get.md)                                   | [directoryObject](directoryobject.md)            | Gets the properties of a deleted item. |
| [Restore](../api/directory-deleteditems-restore.md)                           | [directoryObject](directoryobject.md)            | Restores a recently deleted item.      |
| [Permanently delete](../api/directory-deleteditems-delete.md)                      | None                                             | Permanently deletes an item.           |
| [List deleted items owned by user](../api/directory-deleteditems-getuserownedobjects.md) | [directoryObject](directoryobject.md) collection | Lists directory items owned by a user. |

## Properties

| Property | Type   | Description                                                                                                                                              |
| :------- | :----- | :------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id       | String | A unique identifier for the object; for example, `12345678-9abc-def0-1234-56789abcde`. Key. Not nullable. Read-only. Inherited from [entity](entity.md). |

## Relationships

| Relationship | Type | Description |
|:-|:-|:-|
| administrativeUnits | [administrativeUnit](administrativeunit.md) collection | Conceptual container for user and group directory objects. |
| attributeSets | [attributeSet](attributeset.md) collection | Group of related custom security attribute definitions. |
| authenticationMethodDevices | [authenticationMethodDevice](authenticationMethodDevice.md) | Exposes the hardware OATH method in the directory. |
|certificateAuthorities|[certificateAuthorityPath](../resources/certificateauthoritypath.md)|Container for certificate authorities-related configurations for applications in the tenant.|
| customSecurityAttributeDefinitions | [customSecurityAttributeDefinition](customsecurityattributedefinition.md) collection | Schema of a custom security attributes (key-value pairs). |
| deletedItems | [directoryObject](directoryobject.md) collection | Recently deleted items. Read-only. Nullable. |
| deviceLocalCredentials | [deviceLocalCredential](../resources/devicelocalcredential.md) collection | The credentials of the device's local administrator account backed up to Microsoft Entra ID. |
| externalUserProfiles | [externalUserProfile](externaluserprofile.md) collection | Collection of external user profiles that represent collaborators in the directory. |
| featureRolloutPolicies | [featureRolloutPolicy](featurerolloutpolicy.md) collection | Nullable. |
| federationConfigurations | [identityProviderBase](../resources/identityproviderbase.md) collection | Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol. |
| inboundSharedUserProfiles | [inboundSharedUserProfile](inboundshareduserprofile.md) collection | A collection of external users whose profile data is shared with the Microsoft Entra tenant. Nullable. |
| onPremisesSynchronization | [onPremisesDirectorySynchronization](../resources/onpremisesdirectorysynchronization.md) | A container for on-premises directory synchronization functionalities that are available for the organization. |
| outboundSharedUserProfile | [outboundSharedUserProfile](outboundshareduserprofile.md) collection | A collection of Microsoft Entra users whose profile data is shared with an external Microsoft Entra tenant. Nullable. |
| pendingExternalUserProfiles | [pendingExternalUserProfile](pendingexternaluserprofile.md) collection | Collection of pending external user profiles representing collaborators in the directory that are unredeemed. |
|publicKeyInfrastructure|[publicKeyInfrastructureRoot](../resources/publickeyinfrastructureroot.md)|The collection of public key infrastructure instances for the certificate-based authentication feature for users in a Microsoft Entra tenant.|
| recommendations | [recommendation](../resources/recommendation.md) collection | List of recommended improvements to improve tenant posture. |
| subscriptions | [companySubscription](companysubscription.md) collection | List of commercial subscriptions that an organization has. |
|templates|[template](../resources/template.md) |A container for templates, such as device templates used for onboarding devices in Microsoft Entra ID. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.directory"
}-->

```json
{
  "@odata.type": "#microsoft.graph.directory"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
