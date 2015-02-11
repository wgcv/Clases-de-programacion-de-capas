-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE modifica 
	-- Add the parameters for the stored procedure here
	@codigo as int,
	@nombre as varchar(50),
	@direccion as varchar(50),
	@telefono as varchar(50),
	@sexo as varchar(1),
	@sueldo as decimal(8,2),
	@edad as int
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE  empleados
	SET
	[nombre]=@nombre,
	[direccion]=@direccion,
	[telefono]=@telefono,
	[sexo]=@sexo,
	[sueldo]=@sueldo ,
	[edad]= @edad 
	where codigo=@codigo; 
END
GO
