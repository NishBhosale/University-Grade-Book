
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		< Nishigandha Bhosale>
-- Create date: <11-27-2017>
-- Description:	<Get course details>
-- =============================================
CREATE  PROCEDURE spgetCourseDetails
	-- Add the parameters for the stored procedure here
	@pCourse varchar(20)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   Select c.COURSE_NO, COURSE_NAME,CREDITS, Sec_num,MAX_ENROL, C_SEC_DAY, C_SEC_START_TIME,C_SEC_END_TIME, f.F_FIRST,F_LAST
   from COURSE c, COURSE_SECTION cs, FACULTY f
   where c.DEPT_ID=@pCourse
   and c.COURSE_NO=cs.Course_No
   and cs.F_ID=f.F_ID
END
GO
