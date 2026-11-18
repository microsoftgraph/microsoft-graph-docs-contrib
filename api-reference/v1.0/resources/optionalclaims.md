---
title: "optionalClaims type"
description: "Declares the optional claims requested by an application."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "Jackson-Woods"
ms.date: 09/22/2026
---

# optionalClaims resource type

Namespace: microsoft.graph

Declares the optional claims requested by an application. An application can configure optional claims to be returned in each of three types of tokens (ID token, access token, SAML 2 token) it can receive from the security token service. An application can configure a different set of optional claims to be returned in each token type. The optionalClaims property of the [application](application.md) is an **optionalClaims** object.

Application developers can configure optional claims in their Microsoft Entra apps to specify which claims they want in tokens sent to their application by the Microsoft security token service. See [provide optional claims to your Microsoft Entra app](/azure/active-directory/develop/active-directory-optional-claims) for more information.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|accessToken|[optionalClaim](optionalclaim.md) collection| The optional claims returned in the JWT access token. |
|idToken|[optionalClaim](optionalclaim.md) collection| The optional claims returned in the JWT ID token. |
|kerberosTicket|[optionalClaim](../resources/optionalclaim.md) collection| Optional claims that control group SID resolution for Kerberos tickets. The supported claim name is `groups`. |
|saml2Token|[optionalClaim](optionalclaim.md) collection| The optional claims returned in the SAML token.|

To configure **kerberosTicket**, add an [optionalClaim](../resources/optionalclaim.md) with its **name** property set to `groups`. In the **additionalProperties** collection, specify one or more of the following case-sensitive values:

- `cloud_only_group_sids`: Include cloud SIDs for groups that don't have an on-premises SID.
- `hybrid_group_cloud_sids`: Include the Microsoft Entra cloud SID representation of groups that also retain an on-premises SID.
- `hybrid_group_onpremises_sids`: Include the original on-premises SID representation of groups that retain an on-premises SID.

Group categories depend on the presence of an on-premises SID and a cloud SID, not on the group's source of authority or where it's currently managed. You can combine these values. Ignore unknown values returned by the service. The superseded pre-GA values `hybrid_group_sids` and `onpremises_group_sids` aren't supported.

The **groupMembershipClaims** property of each [application](../resources/application.md) that configures **kerberosTicket** further limits the eligible memberships within the selected SID categories:

| groupMembershipClaims value | Optional group-SID behavior |
|:---------------------------|:----------------------------|
| `All` | Include all memberships in the selected SID categories. |
| `ApplicationGroup` | Include only groups assigned to the application that configures **kerberosTicket**. |
| `DirectoryRole` | Include no optional group SIDs unless combined with another supported group-membership value. |
| `SecurityGroup` | Include only security-enabled groups in the selected SID categories. |

The client application and resource application can each configure **kerberosTicket**. When both configure it, the returned SIDs are the union of the SID categories and eligible memberships requested by the two applications.

For hybrid users, the mandatory on-premises PAC `Groups` projection continues to include all applicable on-premises groups. The **groupMembershipClaims** setting scopes only the optional group-SID categories selected through **kerberosTicket**.

Before you [update an application](../api/application-update.md), read its existing **optionalClaims** configuration. Use the application's object ID, not its application (client) ID, and send the complete **optionalClaims** object because the property uses replace-on-write semantics. Preserve existing entries in all token claim collections.

The following configuration includes cloud SIDs for security-enabled groups without an on-premises SID and original on-premises SIDs for security-enabled groups that retain one. This example assumes the application has no other optional claims configured.

<!-- { "blockType": "ignored" } -->
```json
{
  "groupMembershipClaims": "SecurityGroup",
  "optionalClaims": {
    "accessToken": [],
    "idToken": [],
    "kerberosTicket": [
      {
        "name": "groups",
        "source": null,
        "essential": false,
        "additionalProperties": [
          "cloud_only_group_sids",
          "hybrid_group_onpremises_sids"
        ]
      }
    ],
    "saml2Token": []
  }
}
```

To clear the Kerberos configuration, set **kerberosTicket** to an empty collection while preserving the other token claim collections. When **kerberosTicket** is absent or empty, the service's default Kerberos group-resolution behavior applies.

## Relationships
None.

## JSON Representation
The following JSON representation shows the resource type.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.optionalClaims"
}-->
``` json
{
  "idToken": [{"@odata.type": "microsoft.graph.optionalClaim"}],
  "accessToken": [{"@odata.type": "microsoft.graph.optionalClaim"}],
  "kerberosTicket": [{"@odata.type": "microsoft.graph.optionalClaim"}],
  "saml2Token": [{"@odata.type": "microsoft.graph.optionalClaim"}]
}
```
