CREATE TABLE [dbo].[shows] (
    [id]             INT           IDENTITY (1, 1) NOT NULL,
    [name]           VARCHAR (50)  NOT NULL,
    [season]         INT           NOT NULL,
    [image_path]     VARCHAR (MAX) NULL,
    [add_dt]         DATETIME      CONSTRAINT [DF_shows_add_dt] DEFAULT (getutcdate()) NOT NULL,
    [update_dt]      DATETIME      CONSTRAINT [DF_shows_update_dt] DEFAULT (getutcdate()) NOT NULL,
    [max_selection]  INT           DEFAULT ((1)) NOT NULL,
    [draft_end_dt]   DATETIME      DEFAULT (dateadd(day,(7),getutcdate())) NOT NULL,
    [draft_start_dt] DATETIME      DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [PK_shows] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_shows_add_dt]
    ON [dbo].[shows]([add_dt] DESC);


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'a container for all characters in the show',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'shows',
    @level2type = NULL,
    @level2name = NULL