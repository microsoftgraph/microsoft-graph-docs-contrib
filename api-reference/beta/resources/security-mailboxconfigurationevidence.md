---
title: "mailboxConfigurationEvidence resource type"
description: "Represents a mailbox configuration entity that is reported as part of the security detection alert."
ms.date: 11/19/2025
author: "t-hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# mailboxConfigurationEvidence resource type

Namespace: microsoft.graph.security

Represents a mailbox configuration entity that is reported as part of the security detection alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configurationType|[microsoft.graph.security.mailboxConfigurationType](#mailboxconfigurationtype-values)|The type of mailbox configuration. The possible values are: `mailForwardingRule`, `owaSettings`, `ewsSettings`, `mailDelegation`, `userInboxRule`, `unknownFutureValue`.|
|mailboxPrimaryAddress|String|The primary email address of the mailbox.|
|displayName|String|The display name of the mailbox.|
|upn|String|The user principal name (UPN) of the mailbox.|
|configurationId|String|The unique identifier of the mailbox configuration.|
|externalDirectoryObjectId|Guid|The external directory object identifier of the mailbox.|

### mailboxConfigurationType values

|Member|Description|
|:---|:---|
|mailForwardingRule|Mail forwarding rule configuration.|
|owaSettings|Outlook on the web (OWA) settings configuration.|
|ewsSettings|Exchange Web Services (EWS) settings configuration.|
|mailDelegation|Mail delegation configuration.|
|userInboxRule|User inbox rule configuration.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mailboxConfigurationEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mailboxConfigurationEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "detailedRoles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "configurationType": "String",
  "mailboxPrimaryAddress": "String",
  "displayName": "String",
  "upn": "String",
  "configurationId": "String",
  "externalDirectoryObjectId": "String"
}
