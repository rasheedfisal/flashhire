-- CreateTable
CREATE TABLE `Candidate_Profile` (
    `id` VARCHAR(191) NOT NULL,
    `gender` VARCHAR(191) NOT NULL,
    `location` VARCHAR(191) NOT NULL,
    `date_of_birth` VARCHAR(191) NOT NULL,
    `nationality` VARCHAR(191) NOT NULL,
    `preferred_salary` DOUBLE NULL,
    `about` VARCHAR(191) NULL,
    `user_id` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Candidate_Profile_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Company` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `website` VARCHAR(191) NOT NULL,
    `desc` VARCHAR(191) NOT NULL,
    `address_line1` VARCHAR(191) NOT NULL,
    `address_line2` VARCHAR(191) NULL,
    `postal_code` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL,
    `city` VARCHAR(191) NOT NULL,
    `country` VARCHAR(191) NOT NULL,
    `pic` VARCHAR(191) NULL,

    UNIQUE INDEX `Company_website_key`(`website`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Education` (
    `id` VARCHAR(191) NOT NULL,
    `graduation_date` VARCHAR(191) NOT NULL,
    `qualification` VARCHAR(191) NOT NULL,
    `institute_name` VARCHAR(191) NOT NULL,
    `institute_address` VARCHAR(191) NOT NULL,
    `study_field` VARCHAR(191) NOT NULL,
    `grade` VARCHAR(191) NOT NULL,
    `candidate_profile_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Job` (
    `id` VARCHAR(191) NOT NULL,
    `designation` VARCHAR(191) NOT NULL,
    `department` VARCHAR(191) NOT NULL,
    `min_monthly_salary` DOUBLE NOT NULL,
    `max_monthly_salary` DOUBLE NOT NULL,
    `candidate_nationality` VARCHAR(191) NOT NULL,
    `candidate_min_edu_level` VARCHAR(191) NOT NULL,
    `candidate_min_of_exp` VARCHAR(191) NOT NULL,
    `candidate_lang_req` VARCHAR(191) NOT NULL,
    `candidate_other_req` VARCHAR(191) NULL,
    `job_responsibilities` VARCHAR(191) NOT NULL,
    `other_info` VARCHAR(191) NULL,
    `created_date` VARCHAR(191) NOT NULL,
    `last_modified_date` VARCHAR(191) NOT NULL,
    `recruitment_status` VARCHAR(191) NOT NULL,
    `job_type` VARCHAR(191) NOT NULL,
    `job_field` VARCHAR(191) NOT NULL,
    `company_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Lang_Ability` (
    `id` VARCHAR(191) NOT NULL,
    `language_name` VARCHAR(191) NOT NULL,
    `scale_of_writing` VARCHAR(191) NOT NULL,
    `scale_of_speaking` VARCHAR(191) NOT NULL,
    `candidate_profile_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Message` (
    `id` VARCHAR(191) NOT NULL,
    `content` VARCHAR(191) NOT NULL,
    `is_read` BOOLEAN NOT NULL,
    `created_date` VARCHAR(191) NOT NULL,
    `recipient_id` VARCHAR(191) NOT NULL,
    `sender_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Notification` (
    `id` VARCHAR(191) NOT NULL,
    `content` VARCHAR(191) NOT NULL,
    `category` VARCHAR(191) NOT NULL,
    `is_read` BOOLEAN NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Officer` (
    `id` VARCHAR(191) NOT NULL,
    `position` VARCHAR(191) NOT NULL,
    `is_resigned` BOOLEAN NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `company_id` VARCHAR(191) NULL,

    UNIQUE INDEX `Officer_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Resume` (
    `id` VARCHAR(191) NOT NULL,
    `path` VARCHAR(191) NOT NULL,
    `candidate_profile_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Shortlisted_Candidate` (
    `id` VARCHAR(191) NOT NULL,
    `notes` VARCHAR(191) NULL,
    `is_qualified_interview` BOOLEAN NOT NULL,
    `interview_datetime` VARCHAR(191) NULL,
    `interview_platform` VARCHAR(191) NULL,
    `shortlisted_date` VARCHAR(191) NULL,
    `interviewlisted_date` VARCHAR(191) NULL,
    `candidate_profile_id` VARCHAR(191) NOT NULL,
    `job_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Skill` (
    `id` VARCHAR(191) NOT NULL,
    `skill_name` VARCHAR(191) NOT NULL,
    `proficiency` VARCHAR(191) NOT NULL,
    `candidate_profile_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Applicant` (
    `id` VARCHAR(191) NOT NULL,
    `notes` VARCHAR(191) NULL,
    `is_only_wish` BOOLEAN NOT NULL,
    `is_viewed` BOOLEAN NOT NULL,
    `applied_date` VARCHAR(191) NULL,
    `candidate_profile_id` VARCHAR(191) NOT NULL,
    `job_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Successful_Candidate` (
    `id` VARCHAR(191) NOT NULL,
    `notes` VARCHAR(191) NULL,
    `monthly_salary` DOUBLE NOT NULL,
    `confirmation_status` VARCHAR(191) NOT NULL,
    `added_date` VARCHAR(191) NULL,
    `candidate_profile_id` VARCHAR(191) NOT NULL,
    `job_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Work_Experience` (
    `id` VARCHAR(191) NOT NULL,
    `position` VARCHAR(191) NOT NULL,
    `start_date` VARCHAR(191) NOT NULL,
    `end_date` VARCHAR(191) NOT NULL,
    `duration` VARCHAR(191) NOT NULL,
    `company_name` VARCHAR(191) NOT NULL,
    `company_address` VARCHAR(191) NOT NULL,
    `monthly_salary` DOUBLE NOT NULL,
    `candidate_profile_id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `User` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `role` VARCHAR(191) NOT NULL,
    `pic` VARCHAR(191) NULL,

    UNIQUE INDEX `User_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Candidate_Profile` ADD CONSTRAINT `Candidate_Profile_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Education` ADD CONSTRAINT `Education_candidate_profile_id_fkey` FOREIGN KEY (`candidate_profile_id`) REFERENCES `Candidate_Profile`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Job` ADD CONSTRAINT `Job_company_id_fkey` FOREIGN KEY (`company_id`) REFERENCES `Company`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Lang_Ability` ADD CONSTRAINT `Lang_Ability_candidate_profile_id_fkey` FOREIGN KEY (`candidate_profile_id`) REFERENCES `Candidate_Profile`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Message` ADD CONSTRAINT `Message_sender_id_fkey` FOREIGN KEY (`sender_id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Notification` ADD CONSTRAINT `Notification_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Officer` ADD CONSTRAINT `Officer_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Officer` ADD CONSTRAINT `Officer_company_id_fkey` FOREIGN KEY (`company_id`) REFERENCES `Company`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Resume` ADD CONSTRAINT `Resume_candidate_profile_id_fkey` FOREIGN KEY (`candidate_profile_id`) REFERENCES `Candidate_Profile`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shortlisted_Candidate` ADD CONSTRAINT `Shortlisted_Candidate_candidate_profile_id_fkey` FOREIGN KEY (`candidate_profile_id`) REFERENCES `Candidate_Profile`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Shortlisted_Candidate` ADD CONSTRAINT `Shortlisted_Candidate_job_id_fkey` FOREIGN KEY (`job_id`) REFERENCES `Job`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Skill` ADD CONSTRAINT `Skill_candidate_profile_id_fkey` FOREIGN KEY (`candidate_profile_id`) REFERENCES `Candidate_Profile`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Applicant` ADD CONSTRAINT `Applicant_candidate_profile_id_fkey` FOREIGN KEY (`candidate_profile_id`) REFERENCES `Candidate_Profile`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Applicant` ADD CONSTRAINT `Applicant_job_id_fkey` FOREIGN KEY (`job_id`) REFERENCES `Job`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Successful_Candidate` ADD CONSTRAINT `Successful_Candidate_candidate_profile_id_fkey` FOREIGN KEY (`candidate_profile_id`) REFERENCES `Candidate_Profile`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Successful_Candidate` ADD CONSTRAINT `Successful_Candidate_job_id_fkey` FOREIGN KEY (`job_id`) REFERENCES `Job`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Work_Experience` ADD CONSTRAINT `Work_Experience_candidate_profile_id_fkey` FOREIGN KEY (`candidate_profile_id`) REFERENCES `Candidate_Profile`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
