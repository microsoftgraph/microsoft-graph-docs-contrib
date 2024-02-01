---
title: "Grading Categories"
description: "Teachers can use Grading Categories to weight assignments differently in the class average grade"
ms.localizationpriority: medium
author: "v-rmanda"
ms.prod: "education"
doc_type: conceptualPageType
---

# Grading Categories

Teachers can use Grading Categories to weight assignments differently in the class average grade. For example, a class could have 60% of its grade come from "Homework" assignments and 40% from "Test" assignments.

> **Note:** You can use [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) to test the APIs mentioned in this article.

## Get class

Retrieve a class from the system. A class is a universal group with a special property that indicates to the system that the group is a class. Group members represent the students; group admins represent the teachers in the class. If you're using the delegated token, the user will only see classes in which they are members by using the following APIs:

- [Get Class](/graph/api/educationclass-get): Returns a list of all classes from system.

```http
GET https://graph.microsoft.com/beta/education/classes/{id}
```

## Get assignment settings

Assignments contain handouts and tasks that the teacher wants the student to work on. Each student assignment has an associated submission that contains any work their teacher asked to be turned in. Only teachers or team owners can create assignments. A teacher can add scores and feedback to the submission turned in by the student :

- [Get assignment settings](/graph/api/educationassignmentsettings-get): Allows you to list and see all data for assignments in a class.

```http
GET https://graph.microsoft.com/beta/education/classes/{id}/assignmentSettings
```

## Get grading categories for an assignment

Get a list of the education Grading Category objects and their properties.:

- [Get grading categories for an assignment](/graph/api/educationassignment-list-gradingcategory): Lists grading categories for an assignment.

```http
GET https://graph.microsoft.com/beta/education/classes/{id}/assignmentSettings
```

## Post a grading category

```http
PUT /education/classes/{classId}/assignments/{assignmentId}/gradingCategory/$ref
```

**Request**

The following example shows a request. 

```http
POST https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/28992cce-fac0-4950-a836-5a524ded8599/gradingCategory/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/905b49a5-1639-49ab-9fbe-6a035def5ba3"
}
```

**Response**

The following example shows the response.

```http
HTTP/1.1 204 No Content
```

## Update a grading category

### Example 1: 

```http
PATCH /education/classes/{classId}/assignmentSettings/gradingCategories/{gradingCategoryId}
```

**Request**

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings/gradingCategories/a5ca6dda-f220-43ca-81e4-02396b99f398
Content-type: application/json

Request Body
{
    "displayName": "Test updated"
}
```

**Response**

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories/$entity",
    "id": "a5ca6dda-f220-43ca-81e4-02396b99f398",
    "displayName": "Test updated",
    "percentageWeight": 30
}
```
### Example 2: 

```http
PATCH /education/classes/{classId}/assignmentSettings/
```

**Request**

The following example shows a request. 

```http
PATCH https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignmentSettings
Content-type: application/json

Request Body
{
    "gradingCategories@delta": [
        {
            // Change this grading category's name
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Lab Test"
        },
        {
            // Delete this grading category
            "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#gradingCategories/$deletedEntity",
            "id": "e2a86277-24f9-4f29-8196-8c83fc69d00d",
            "reason": "deleted"
        },
        {
            // Add a new grading category
            "displayName": "Lab Practice",
            "percentageWeight": 30
        },
        {
            "displayName": "Lab Theory",
            "percentageWeight": 10
        }
    ]
}
```

**Response**

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/$entity",
    "submissionAnimationDisabled": false,
    "gradingCategories@odata.context": "https://graph.microsoft.com/v1.0/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignmentSettings/gradingCategories",
    "gradingCategories": [
        {
            "id": "fb4a4009-3cc4-4dea-9991-e0a0763659e3",
            "displayName": "Homework",
            "percentageWeight": 30
        },
        {
            "id": "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
            "displayName": "Lab Test",
            "percentageWeight": 30
        },
        {
            "id": "d47d7a3f-44a1-47e1-8aec-68b028f64b2e",
            "displayName": "Lab Practice",
            "percentageWeight": 30
        },
        {
            "id": "021db844-0f03-4483-929d-1c1dbfd4fcb4",
            "displayName": "Lab Theory",
            "percentageWeight": 10
        }
    ]
}
```

## Delete grading categories

```http
DELETE /education/classes/{classId}/assignments/{assignmentId}/gradingCategory/$ref
```

**Request**

The following example shows a request. 

```http
DELETE https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/0bcb37af-3676-47ef-ae93-8de22ce5ff1d/gradingCategory/$ref
```

**Response**

The following example shows the response.

```http
HTTP/1.1 204 No Content
```

## Permissions

The assignments API supports delegated (per user) only. 

## Filtering data

Assignment API endpoints return a large amount of data. You can use the [filter](/graph/query-parameters#filter-parameter) [OData query parameter](/graph/query-parameters) to handle the data as needed. 