CREATE TABLE [${ohdsiSchema}].[feas_study_generation_info](
	[study_id] [int] NOT NULL,
	[start_time] [datetime] NULL,
	[execution_duration] [int] NULL,
	[status] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
        CONSTRAINT [PK_feas_study_generation_info] PRIMARY KEY CLUSTERED ([study_id] ASC )
)
;

CREATE TABLE [${ohdsiSchema}].[feasibility_study](
  [id] [int] IDENTITY(1,1) NOT NULL,
  [name] [varchar](255) NOT NULL,
  [description] [varchar](1000) NULL,
  [index_def_id] [int] NULL,
  [result_def_id] [int] NULL,
  [generate_info_id] [int] NULL,
  [created_by] [varchar](255) NULL,
  [created_date] [datetime] NULL,
  [modified_by] [varchar](255) NULL,
  [modified_date] [datetime] NULL,
  CONSTRAINT [PK_clinical_trial_protocol] PRIMARY KEY CLUSTERED ([id] ASC),
  CONSTRAINT [FK_feasibility_study_cohort_definition_index] FOREIGN KEY([index_def_id])
    REFERENCES [${ohdsiSchema}].[cohort_definition] ([id]),
  CONSTRAINT [FK_feasibility_study_cohort_definition_result] FOREIGN KEY([result_def_id])
    REFERENCES [${ohdsiSchema}].[cohort_definition] ([id]),
  CONSTRAINT [FK_feasibility_study_feas_study_generation_info] FOREIGN KEY([generate_info_id])
    REFERENCES [${ohdsiSchema}].[feas_study_generation_info] ([study_id])
)
;

CREATE TABLE [${ohdsiSchema}].[feasibility_inclusion](
  [study_id] [int] NOT NULL,
  [sequence] [int] NOT NULL,
  [name] [varchar](255) NULL,
  [description] [varchar](1000) NULL,
  [expression] [varchar](max) NULL,
  CONSTRAINT [FK_feasibility_inclusion_feasibility_study] FOREIGN KEY([study_id])
    REFERENCES [${ohdsiSchema}].[feasibility_study] ([id])
    ON DELETE CASCADE
)
;

CREATE TABLE [${ohdsiSchema}].[feas_study_result](
  [study_id] [int] NOT NULL,
  [inclusion_rule_mask] [bigint] NOT NULL,
  [person_count] [bigint] NOT NULL
)
;

CREATE TABLE [${ohdsiSchema}].[feas_study_index_stats](
  [study_id] [int] NOT NULL,
  [person_count] [bigint] NOT NULL,
  [match_count] [bigint] NOT NULL
)
;

CREATE TABLE [${ohdsiSchema}].[feas_study_inclusion_stats](
  [study_id] [int] NOT NULL,
  [rule_sequence] [int] NOT NULL,
  [name] [varchar](255) NOT NULL,
  [person_count] [bigint] NOT NULL,
  [gain_count] [bigint] NOT NULL,
  [person_total] [bigint] NOT NULL
)
;

