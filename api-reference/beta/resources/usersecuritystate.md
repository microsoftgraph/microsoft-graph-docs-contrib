# UserSecurityState resource type

Complex Type containing stateful information about the User Account

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|accountName|String|Account name of user account (without AD Domain or DNS Domain) - (also called 'mailNickName')|
|domainName|String|NetBIOS/AD Domain of user account  (i.e. domain\account format)|
|logonDateTime|DateTimeOffset|Time at which the logon occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|logonId|String|User logon ID|
|logonIpAddress|String|IP Address the logon request orginated from|
|logonLocation|String|Location (by IP address mapping) associated with a user logon event by this user|
|logonType|String|Method of user logon. Possible values are: `unknown`, `interactive`, `remoteInteractive`, `network`, `batch`, `service`.|
|onPremisesSecurityIdentifier|String|AD (on premises) Security Identifier (SID) of the user|
|riskScore|String|Provider-generated/calculated risk score of the user account|
|userAccountType|String|User Account type (group membership), per Windows definition. Possible values are: `unknown`, `standard`, `power`, `administrator`.|
|userPrincipalName|String|User login name - internet format: (user account name)@(user account DNS domain name)|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.UserSecurityState"
}-->

```json
{
  "accountName": "String",
  "domainName": "String",
  "logonDateTime": "String (timestamp)",
  "logonId": "String",
  "logonIpAddress": "String",
  "logonLocation": "String",
  "logonType": "String",
  "onPremisesSecurityIdentifier": "String",
  "riskScore": "String",
  "userAccountType": "String",
  "userPrincipalName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "UserSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->