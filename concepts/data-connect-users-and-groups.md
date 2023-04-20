---
title: "Use Microsoft Graph Data Connect to define the scope of a dataset"
description: "Learn how to use Microsoft Graph Data Connect to select users that you want to extract data for and include filters to limit the data returned."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Use Microsoft Graph Data Connect to define the scope of a dataset

This article aims to explain what groups are in Microsoft Graph Data Connect and what the options for scope selection are along with respective examples. Scope selection allows you to specify how you wish to extract objects for "All users in the Office 365 tenant" or to "Select groups from the Office 365 tenant". For more information see [Demystifying User Scopes](https://devblogs.microsoft.com/microsoft365dev/microsoft-graph-data-connect-demystifying-user-scopes/#:~:text=The%20user%20scope%20option%20lets%20you%20either%20specify,Azure%20Active%20Directory%20Security%20or%20Microsoft%20365%20groups.)

You can create and manage several different types of groups in the Microsoft 365 admin center; for details see [Compare Groups](https://learn.microsoft.com/en-us/microsoft-365/admin/create-groups/compare-groups?view=o365-worldwide). The following types of groups applicable to Microsoft Graph Data Connect:

*  **Microsoft 365 Groups** are used for collaboration between users, both inside and outside your company. They include collaboration services such as SharePoint and Planner.
* **Distribution groups** are used for sending email notifications to a group of people.
* **Security groups** are used for granting access to resources such as SharePoint sites.
* **Mail-enabled security groups** are used for granting access to resources such as SharePoint and emailing notifications to those users.

## Scope selection in Microsoft Graph Data Connect
You can scope Microsoft Graph Data Connect datasets by users or by groups. The following sections provide details about the scope options for each.

### User-scoped datasets
User-scoped datasets can be messages, events, users, and so on. These datasets focus on data around the individual user for the respective dataset.

The following are the options for user-scoped datasets:
    * **All users in the tenant**: returns data for all the users in the tenant. Data is extracted for individual users in the selected group. More information, see [User selection and filtering capabilities](https://learn.microsoft.com/en-us/graph/data-connect-filtering).
    * **All users in the tenant with a scope filter**: returns data for all the users in the tenant that are part of the scope filter applied. Data is extracted for individual users from the selected filter (group).
        * Scope Filter can help filter down the users desired, if left empty it returns all the data of the users. 
    *	**Select groups from the Microsoft 365 tenant**: data is extracted for individual users in the mentioned group from scope.

#### Example

A customer wants to extract the messages dataset and creates a security group of users A, B, and C in a tenant of 500 users, and passes this group. Microsoft Graph Data Connect expands the provided security group into a list of users, extracts the messages data for those three users, and delivers the data for those users to the customer. The customer will only receive the messages dataset for individual users A, B, and C out of their tenant of 500 users.
        
### Group-scoped datasets

Group-scoped datasets can be Outlook Group Conversations, Teams Channel Messages, Group Details, etc. These datasets focus on the collective data in a group from Outlook or Teams.

The following are the options for group-scoped datasets:
    * **All groups in the tenant**: returns data for all the groups in the tenant.
    * **All groups in the tenant with a scope filter**: Returns data for all the groups in the tenant with the scope filter applied. The scope Filter can help narrow down the list of groups. 
    *   **Select groups from the Microsoft 365 tenant**: Returns collective data of the selected groups. Microsoft Graph Data Connect looks for data associated with those specific groups rather than the individuals of the group. 

> **NOTE:**  When the customer specifies a group or groups to be the scope, MGDC looks for data associated with those specific groups rather than the individuals of the group. 
 
* The table below maps the correct dataset per type of group. This can help developers understand which type of groups are compatible with select datasets when extracting and using scope filters. Groups can either be distribution groups, security groups or M365 groups.  The types of groups supported varies based on which dataset is being requested.

|              Datasets                 | M365 Groups | Distribution Groups | Security Groups | Mail-Enabled Security  |
|---------------------------------------|-------------|---------------------|-----------------|------------------------|
|     TeamsStandardChannelMessages      | Yes*        | No                  | No              | No                     |
|     TeamsChannelDetails_v0            | Yes*        | No                  | No              | No                     |
|     OutlookGroupConversations         | Yes         | No                  | No              | No                     |
|     GroupDetails                      | Yes         | Yes                 | Yes             | Yes                    |
|     GroupMembers                      | Yes         | Yes                 | Yes             | Yes                    |
|     GroupOwners                       | Yes         | Yes*                | Yes*            | Yes                    |
|     Viva Insights                     | N/A         | N/A                 | N/A             | N/A                    |
|     OneDrive and SharePoint Online    | N/A         | N/A                 | N/A             | N/A                    |
|     All other datasets                | Yes         | Yes                 | Yes             | Yes                    |

*For Teams datasets: M365 groups must also be Teams enabled.
*For Group datasets: These don’t contain a primary mailbox, their region will be defaulted to their tenant home region. 

#### Example
A customer wants to extract the group details dataset with a security group of users A, B, and C out of their tenant of 500 users. Because this is a group-scoped dataset, the customer will only receive group details data for the specified group. The customer will not receive any individual data for users A, B, and C in the group.

> **Note:**  For Teams group-scoped datasets, if the group in scope is not a Teams- enabled group, it will not return any data. Microsoft 365 groups can be enabled as Teams groups, but distribution groups and security groups are not Teams-enabled. The following section provides details about the type of groups that are available to select. 

## Search for and verify group types

Use the following steps to search for the types of groups in your tenant to help you determine what is compatible with the type of scope you want to select.

1. After you select the group-scoped dataset, search for and add a group or groups or group IDs.
    
    ![image1](images/data-connect-groups-1.png)

2. After you add groups, you can view the group ID. Copy the group IDs of the groups you want to verify.

    ![image2](images/data-connect-groups-2.png)

3. In a new tab, go to the [Azure homepage](www.portal.azure.com) and choose **Azure Active Directory**.

    ![image2.5](images/data-connect-groups-2.5.png)

4. Paste the group ID copied from step 2 and choose the **Groups** tab.

    ![image3](images/data-connect-groups-3.png)

5. Verify the type of group that you have.

    ![image4](images/data-connect-groups-4.png)
 
