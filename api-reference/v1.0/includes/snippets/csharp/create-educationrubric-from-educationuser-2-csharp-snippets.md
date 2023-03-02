---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationRubric
{
	DisplayName = "Example Points Rubric",
	Description = new EducationItemBody
	{
		Content = "This is an example of a rubric with points",
		ContentType = BodyType.Text,
	},
	Levels = new List<RubricLevel>
	{
		new RubricLevel
		{
			DisplayName = "Good",
			Description = new EducationItemBody
			{
				Content = "",
				ContentType = BodyType.Text,
			},
			Grading = new EducationAssignmentGradeType
			{
				OdataType = "#microsoft.graph.educationAssignmentPointsGradeType",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"maxPoints" , 2
					},
				},
			},
		},
		new RubricLevel
		{
			DisplayName = "Poor",
			Description = new EducationItemBody
			{
				Content = "",
				ContentType = BodyType.Text,
			},
			Grading = new EducationAssignmentGradeType
			{
				OdataType = "#microsoft.graph.educationAssignmentPointsGradeType",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"maxPoints" , 1
					},
				},
			},
		},
	},
	Qualities = new List<RubricQuality>
	{
		new RubricQuality
		{
			Description = new EducationItemBody
			{
				Content = "Argument",
				ContentType = BodyType.Text,
			},
			Criteria = new List<RubricCriterion>
			{
				new RubricCriterion
				{
					Description = new EducationItemBody
					{
						Content = "The essay's argument is persuasive.",
						ContentType = BodyType.Text,
					},
				},
				new RubricCriterion
				{
					Description = new EducationItemBody
					{
						Content = "The essay's argument does not make sense.",
						ContentType = BodyType.Text,
					},
				},
			},
			Weight = 50.0f,
		},
		new RubricQuality
		{
			Description = new EducationItemBody
			{
				Content = "Spelling and Grammar",
				ContentType = BodyType.Text,
			},
			Criteria = new List<RubricCriterion>
			{
				new RubricCriterion
				{
					Description = new EducationItemBody
					{
						Content = "The essay uses proper spelling and grammar with few or no errors.",
						ContentType = BodyType.Text,
					},
				},
				new RubricCriterion
				{
					Description = new EducationItemBody
					{
						Content = "The essay has numerous errors in spelling and/or grammar.",
						ContentType = BodyType.Text,
					},
				},
			},
			Weight = 50.0f,
		},
	},
	Grading = new EducationAssignmentGradeType
	{
		OdataType = "#microsoft.graph.educationAssignmentPointsGradeType",
	},
};
var result = await graphClient.Education.Me.Rubrics.PostAsync(requestBody);


```