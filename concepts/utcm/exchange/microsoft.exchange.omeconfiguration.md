---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

Create a new OME Configuration policy in your cloud-based organization.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the OME Configuration policy that you want to modify. | - |
| BackgroundColor | Write | String | The BackgroundColor parameter specifies the background color | - |
| DisclaimerText | Write | String | The DisclaimerText parameter specifies the disclaimer text in the email that contains the encrypted message | - |
| EmailText | Write | String | The EmailText parameter specifies the default text that accompanies encrypted email messages. | - |
| ExternalMailExpiryInDays | Write | UInt32 | The ExternalMailExpiryInDays parameter specifies the number of days that the encrypted message is available to external recipients in the Microsoft 365 portal. A valid value is an integer from 0 to 730. | - |
| IntroductionText | Write | String | The IntroductionText parameter specifies the default text that accompanies encrypted email messages. | - |
| OTPEnabled | Write | Boolean | The OTPEnabled parameter specifies whether to allow recipients to use a one-time passcode to view encrypted messages. | - |
| PortalText | Write | String | The PortalText parameter specifies the text that appears at the top of the encrypted email viewing portal. | - |
| PrivacyStatementUrl | Write | String | The PrivacyStatementUrl parameter specifies the Privacy Statement link in the encrypted email notification message. | - |
| ReadButtonText | Write | String | The ReadButtonText parameter specifies the text that appears on the 'Read the message' button.  | - |
| SocialIdSignIn | Write | Boolean | The SocialIdSignIn parameter specifies whether a user is allowed to view an encrypted message in the Microsoft 365 admin center using their own social network id (Google, Yahoo, and Microsoft account). | - |
| Ensure | Write | String | Specifies if this Outbound connector should exist. | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Exchange Administrator |


#### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

##### Roles

- Compliance Admin, Security Admin, Data Loss Prevention, Transport Rules, Information Rights Management, View-Only Configuration, Security Reader

##### Role Groups

- Organization Management

#### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



