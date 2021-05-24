---
title: "Quickstart: Create your first custom Microsoft Graph connector"
description: "Quickstart guide to create your first custom Microsoft Graph connector"
localization_priority: Priority
author: mecampos
doc_type: conceptualPageType
---


# Quickstart: Create your first custom Microsoft Graph connector

<!-- markdownlint-disable MD002 MD025 MD041 -->
<!--- # Introduction --->

Microsoft Graph connectors allow you to add your own data into Microsoft Graph and have it power various Microsoft 365 experiences.

This .NET Core application shows you how to use the Microsoft Graph Connector API to create a customer connector and use it to power Microsoft Search. The sample uses a mock-up data appliance parts inventory for the Contoso Appliance Repair.

## How does the sample work?

![Diagram showing how does the sample work](images/connectors-images/build1.png)

## Prerequisites

1. Install Visual studio 2019 with [.NET Core 3.1 SDK](https://www.microsoft.com/net/download/core) on your development computer.
2. You need a [personal Microsoft account](https://signup.live.com/), or a work or school account.
3. Install the [Entity Framework Core Tools](/ef/core/miscellaneous/cli/dotnet) (dotnet tool install --global dotnet-ef)
4. Install a tool to update a SQLite database. For example, the [DB Browser for SQLite](https://sqlitebrowser.org/).
5. Download **ApplianceParts.csv** file from [https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/PartsInventoryConnector/ApplianceParts.csv](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/PartsInventoryConnector/ApplianceParts.csv) and add it to the PartsInventoryConnector.csproj
