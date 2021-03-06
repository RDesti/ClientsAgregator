CREATE TABLE [dbo].[Clients] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]    VARCHAR (255) NOT NULL,
    [LastName]     VARCHAR (255) NOT NULL,
    [Phone]        VARCHAR (60)  NULL,
    [Email]        VARCHAR (255) NULL,
    [BulkStatusId] INT           NOT NULL,
    [Male]         BIT           NOT NULL,
    CONSTRAINT [PK_CLIENTS] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Clients_fk0] FOREIGN KEY ([BulkStatusId]) REFERENCES [dbo].[BulkStatus] ([Id])
);

