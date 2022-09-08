---
title: "Microsoft Graph Data Connect Troubleshooting"
description: "MGDC Troubleshooting page is meant to help developers get unblocked quickly or help address any issues they may have based on how they want to set up MGDC."
author: "David1997sb"
ms.localizationpriority: high
ms.prod: "data-connect"
---

# Microsoft Data Connect Troubleshooting

Microsoft Graph Data Connect lets developers create applications that customers can use to provide managed access to their at-scale Microsoft Graph datasets. This article aims to help MGDC developers further research any common troubleshooting issues and get unblocked quickly so they can run MGDC succesfully on their own. For an introduction to MGDC, see the [overview](data-connect-concept-overview.md). For MGDC FAQ see the [FAQ](data-connect-faq.md).

## Troubleshooting for SPN check when running your first MGDC Pipeline

If you are having issues running your pipelines for the first time, please check how you have defined the owners for SPN. Please ensure you have followed the below.
    1. The SPN must correlate to a user account or user ID for ownership. The owner for a SPN cannot be another SPN.
    2. The owner account must have:
        1. User account
        2. The user account must have an Exchange E5 Office license with Exchange Online capabilities. This account does NOT need admin privilges to be able to run pipelines against this SPN check.
    3. If the owning member is no longer valid in a tenant's system, pipelines will fail this check unless a current valid user within the tenant owns the account. Please ensure that the owning account is passed down to another member with the above requirements if there is a change in ownership.

For any other questions please reach out to dataconnect@microsoft.com.

## Troubleshooting on how to become an approver to approve MGDC jobs

If you are having issues approving jobs within your tenant for your specified pipeline runs or extractions, please ensure that the approvers in your tenant meet the criteria below. Certain priviledges must be granted to designated approvers to successfully approve jobs.
    1. Approvers must be real users in the tenant. For example, they cannot be former member IDs of the tenant or SPNs. They must be currently active users within the tenant. 
    2. The user account must have an Exchange E5 Office license with Exchange Online capabilities and mailbox.
    3. If approvers want to approve jobs through the M365 admin center, approvers will need global admin priviledges. Global admin priviledges are not needed when approving jobs via PowerShell script.

For any other questions please reach out to dataconnect@microsoft.com.

## Troubleshooting on Multi-Geo tenant extraction for MGDC

Sometimes, customers may want to add other regions to their pipelines, especially larger customers with multi-geo tenants. While multi-geo tenants can certainly still use MGDC, please remember that when customers request data, they can only get data for one region extracted per region. Customers cannot use one pipeline to extract data from multiple geos. This rule is enforced by MGDC for the privacy and security for a customer's tenant users. 

Below things to keep in mind for customers with multi-geo tenats to extract data:
    1. When requesting datasets, MGDC only allows datasets to be extracted from the same region as the tenant. For example, if you have a tenant in Europe (EUR) but want to run a pipeline for your users in North America (NAM), you will only get data for users in NAM since you specified a pipeline for NAM.
    2. Multi-geo tenants can extract data for their tenants by setting up region specific pipelines. For example, one region maps to one or a set of pipelines for that region. 

For any other questions please reach out to dataconnect@microsoft.com.
