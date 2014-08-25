USE fdasys_sfdas
GO

/****** Object:  Table [dbo].[Usuarios]    Script Date: 08/24/2014 23:57:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Mail] [varchar](50) NULL,
	[Dni] [bigint] NULL,
	[FechaRegistracion] [datetime] NULL,
	[FechaNacimiento] [datetime] NULL,
	
	[EsAdministrador] [bit] NULL,
	[Password] [varchar](20) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


