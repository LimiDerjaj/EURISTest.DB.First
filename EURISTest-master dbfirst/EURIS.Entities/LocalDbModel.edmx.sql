
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [LocalDb];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Product]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Product];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Product'
CREATE TABLE [dbo].[Product] (
    [Id] int  NOT NULL,
    [Code] nvarchar(10)  NOT NULL,
    [Description] nvarchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Product'
ALTER TABLE [dbo].[Product]
ADD CONSTRAINT [PK_Product]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Product]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Product];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Product'
CREATE TABLE [dbo].[Product] (
    [Id] int  NOT NULL,
    [Code] nvarchar(10)  NOT NULL,
    [Description] nvarchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Product'
ALTER TABLE [dbo].[Product]
ADD CONSTRAINT [PK_Product]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------


IF OBJECT_ID(N'[dbo].[Catalog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Catalog];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Catalog'
CREATE TABLE [dbo].[Catalog] (
    [Id] int  NOT NULL,
    [Code] nvarchar(10)  NOT NULL,
    [Description] nvarchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Product'
ALTER TABLE [dbo].[Catalog]
ADD CONSTRAINT [PK_Catalopg]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ProductCatalog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductCatalog];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Product'
CREATE TABLE [dbo].[ProductCatalog] (
    Catalog_id int,
	Product_id int,
 
-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'ProductCatalog'
CONSTRAINT Prod_Cat_PK PRIMARY KEY (Catalog_id, Product_id),

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------
CONSTRAINT FK_CatalogId
      FOREIGN KEY (Catalog_Id) REFERENCES Catalog (Id),
  CONSTRAINT FK_ProductId
      FOREIGN KEY (Product_id) REFERENCES Product (Id)
);

GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------