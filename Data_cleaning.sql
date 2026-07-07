select * 
from layoffs;

create table layoffs_staging
like layoffs;

select * 
from layoffs_staging;

INSERT  layoffs_staging 
select *
from  layoffs;

SELECT *,
ROW_NUMBER() OVER(PARTITION BY company,location,industry,total_laid_off,
percentage_laid_off,`date`,stage,country,funds_raised_millions) as row_num
FROM layoffs_staging;

WITH Dublicate_CTE as
(
SELECT *,
ROW_NUMBER() OVER(PARTITION BY company,location,industry,total_laid_off,
percentage_laid_off,`date`,stage,country,funds_raised_millions) as row_num
FROM layoffs_staging
)

SELECT * 
FROM Dublicate_CTE
WHERE row_num>1;

select * from layoffs_staging2
where company=' Included Health';

WITH Dublicate_CTE as
(
SELECT *,
ROW_NUMBER() OVER(PARTITION BY company,location,industry,total_laid_off,
percentage_laid_off,`date`,stage,country,funds_raised_millions) as row_num
FROM layoffs_staging
)

DELETE  
FROM Dublicate_CTE
WHERE row_num>1;

-- DELETE THE DUBLICATE VALUE -- 
CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM layoffs_staging2;

INSERT INTO layoffs_staging2
SELECT *,
ROW_NUMBER() OVER(PARTITION BY company,location,industry,total_laid_off,
percentage_laid_off,`date`,stage,country,funds_raised_millions) as row_num
FROM layoffs_staging;

DELETE 
FROM layoffs_staging2
WHERE row_num > 1;

SELECT * 
FROM layoffs_staging2
WHERE (company = '#Paid' AND location = 'Toronto');

-- Standardizing Table--

SELECT  company,TRIM(company)
FROM layoffs_staging2
;

UPDATE layoffs_staging2
SET company = TRIM(company);

SELECT DISTINCT Industry
FROM layoffs_staging2 
ORDER BY 1;

 SELECT *
 FROM layoffs_staging2
 WHERE industry LIKE 'Crypto%';
 
 UPDATE layoffs_staging2
 SET industry = 'Crypto'
 WHERE industry LIKE 'Crypto%';
 
 SELECT  country,TRIM(TRAILING '.' FROM country)
 FROM layoffs_staging2
 WHERE country = 'United States.'
 ORDER by 1;
 
 UPDATE layoffs_staging2
 SET country = TRIM(TRAILING '.' FROM country)
 WHERE country LIKE 'United States%';
 
 -- DATE convert TEXT to DATE--
 SELECT `date`
 FROM layoffs_staging2;

UPDATE layoffs_staging2
SET  `date` =  STR_TO_DATE(`date`,'%m/%d/%Y');

ALTER TABLE  layoffs_staging2
MODIFY COLUMN `date` DATE;

SELECT * FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS  NULL;

SELECT * 
from layoffs_staging2
WHERE industry IS NULL
OR industry = '';

SELECT *
FROM layoffs_staging2
WHERE company = 'Airbnb';
 
 UPDATE layoffs_staging2
 SET industry = NULL
 WHERE industry ='';
 
 SELECT l1.industry,l2.industry
 FROM layoffs_staging2 l1
 JOIN layoffs_staging2 l2
   ON l1.company = l2.company
WHERE (l1.industry IS NULL )
AND l2.industry IS NOT NULL;

UPDATE layoffs_staging2 l1
JOIN layoffs_staging2 l2
   ON l1.company = l2.company
SET l1.industry = l2.industry
WHERE l1.industry IS NULL 
AND l2.industry IS NOT NULL;

DELETE
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS  NULL;
SELECT * FROM layoffs_staging2;

ALTER TABLE layoffs_staging2
DROP COLUMN row_num;

SELECT company,MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 1 ASC; 

SELECT * from layoffs_staging2;