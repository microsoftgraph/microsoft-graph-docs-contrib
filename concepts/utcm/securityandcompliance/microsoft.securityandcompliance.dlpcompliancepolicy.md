---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Data Loss Prevention Compliance
Policy in Security and Compliance Center.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Name | Key | String | The Name parameter specifies the unique name of the DLP policy. If the value contains spaces, enclose the value in quotation marks. | - |
| Comment | Write | String | The Comment parameter specifies an optional comment. | - |
| EndpointDlpLocation | Write | StringArray[] | The EndpointDLPLocation parameter specifies the user accounts to include in the DLP policy for Endpoint DLP when they are logged on to an onboarded device. You identify the account by name or email address. You can use the value All to include all user accounts. | - |
| EndpointDlpLocationException | Write | StringArray[] | The EndpointDlpLocationException parameter specifies the user accounts to exclude from Endpoint DLP when you use the value All for the EndpointDlpLocation parameter. You identify the account by name or email address. | - |
| OnPremisesScannerDlpLocation | Write | StringArray[] | The OnPremisesScannerDlpLocation parameter specifies the on-premises file shares and SharePoint document libraries and folders to include in the DLP policy. You can use the value All to include all on-premises file shares and SharePoint document libraries and folders. | - |
| OnPremisesScannerDlpLocationException | Write | StringArray[] | The OnPremisesScannerDlpLocationException parameter specifies the on-premises file shares and SharePoint document libraries and folders to exclude from the DLP policy if you use the value All for the OnPremisesScannerDlpLocation parameter. | - |
| PowerBIDlpLocation | Write | StringArray[] | The PowerBIDlpLocation parameter specifies the Power BI workspace IDs to include in the DLP policy. Only workspaces hosted in Premium Gen2 capacities are permitted. You can use the value All to include all supported workspaces. | - |
| PowerBIDlpLocationException | Write | StringArray[] | The PowerBIDlpLocationException parameter specifies the Power BI workspace IDs to exclude from the DLP policy when you use the value All for the PowerBIDlpLocation parameter. Only workspaces hosted in Premium Gen2 capacities are permitted. | - |
| ThirdPartyAppDlpLocation | Write | StringArray[] | The ThirdPartyAppDlpLocation parameter specifies the non-Microsoft cloud apps to include in the DLP policy. You can use the value All to include all connected apps. | - |
| ThirdPartyAppDlpLocationException | Write | StringArray[] | The ThirdPartyAppDlpLocationException parameter specifies the non-Microsoft cloud apps to exclude from the DLP policy when you use the value All for the ThirdPartyAppDlpLocation parameter. | - |
| ExchangeLocation | Write | StringArray[] | The ExchangeLocation parameter specifies Exchange Online mailboxes to include in the DLP policy. You can only use the value All for this parameter to include all mailboxes. | - |
| ExchangeSenderMemberOf | Write | StringArray[] | Exchange members to include. | - |
| ExchangeSenderMemberOfException | Write | StringArray[] | Exchange members to exclude. | - |
| Mode | Write | String | The Mode parameter specifies the action and notification level of the DLP policy. Valid values are: Enable, TestWithNotifications, TestWithoutNotifications, Disable and PendingDeletion. | `Enable`, `TestWithNotifications`, `TestWithoutNotifications`, `Disable`, `PendingDeletion` |
| OneDriveLocation | Write | StringArray[] | The OneDriveLocation parameter specifies the OneDrive for Business sites to include. You identify the site by its URL value, or you can use the value All to include all sites. | - |
| OneDriveLocationException | Write | StringArray[] | This parameter specifies the OneDrive for Business sites to exclude when you use the value All for the OneDriveLocation parameter. You identify the site by its URL value. | - |
| Priority | Write | UInt32 | Priority for the Policy. | - |
| SharePointLocation | Write | StringArray[] | The SharePointLocation parameter specifies the SharePoint Online sites to include. You identify the site by its URL value, or you can use the value All to include all sites. | - |
| SharePointLocationException | Write | StringArray[] | This parameter specifies the SharePoint Online sites to exclude when you use the value All for the SharePointLocation parameter. You identify the site by its URL value. | - |
| TeamsLocation | Write | StringArray[] | Teams locations to include | - |
| TeamsLocationException | Write | StringArray[] | Teams locations to exclude. | - |
| Ensure | Write | String | Specify if this policy should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Compliance Administrator |


### Office 365 Exchange Online

To authenticate with the Security and Compliance APIs, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



