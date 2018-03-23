--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Action; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Action" (
    "ActionId" integer NOT NULL,
    "ActionName" character varying(50) NOT NULL,
    "ActionActive" boolean NOT NULL
);


ALTER TABLE public."Action" OWNER TO postgres;

--
-- Name: COLUMN "Action"."ActionId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Action"."ActionId" IS '';


--
-- Name: COLUMN "Action"."ActionName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Action"."ActionName" IS '';


--
-- Name: COLUMN "Action"."ActionActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Action"."ActionActive" IS '';


--
-- Name: Action_ActionId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Action_ActionId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Action_ActionId_seq" OWNER TO postgres;

--
-- Name: Action_ActionId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Action_ActionId_seq" OWNED BY public."Action"."ActionId";


--
-- Name: AttributeProductRequired; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AttributeProductRequired" (
    "CompanyId" bigint NOT NULL,
    "LineId" integer NOT NULL,
    "ProductDetailId" bigint NOT NULL
);


ALTER TABLE public."AttributeProductRequired" OWNER TO postgres;

--
-- Name: TABLE "AttributeProductRequired"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."AttributeProductRequired" IS 'Indicates if the product is required';


--
-- Name: COLUMN "AttributeProductRequired"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."AttributeProductRequired"."CompanyId" IS 'Company identifier';


--
-- Name: COLUMN "AttributeProductRequired"."LineId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."AttributeProductRequired"."LineId" IS 'Line identifier';


--
-- Name: COLUMN "AttributeProductRequired"."ProductDetailId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."AttributeProductRequired"."ProductDetailId" IS 'Product detail identifier';


--
-- Name: Box; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Box" (
    "BoxGTIN14" character varying(15) NOT NULL,
    "BoxGTIN14Description" character varying(256) NOT NULL,
    "BoxQuantityContain" numeric(18,2) NOT NULL
);


ALTER TABLE public."Box" OWNER TO postgres;

--
-- Name: TABLE "Box"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."Box" IS 'boxes in which the product is stored';


--
-- Name: COLUMN "Box"."BoxGTIN14"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Box"."BoxGTIN14" IS 'Code of the box';


--
-- Name: COLUMN "Box"."BoxGTIN14Description"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Box"."BoxGTIN14Description" IS 'Description of box';


--
-- Name: COLUMN "Box"."BoxQuantityContain"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Box"."BoxQuantityContain" IS 'Quantity contained in the box';


--
-- Name: BoxProduct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BoxProduct" (
    "ProductGTIN" character varying(14) NOT NULL,
    "BoxGTIN14" character varying(15) NOT NULL
);


ALTER TABLE public."BoxProduct" OWNER TO postgres;

--
-- Name: COLUMN "BoxProduct"."ProductGTIN"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."BoxProduct"."ProductGTIN" IS '';


--
-- Name: COLUMN "BoxProduct"."BoxGTIN14"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."BoxProduct"."BoxGTIN14" IS '';


--
-- Name: BrandProduct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BrandProduct" (
    "BrandProductId" bigint NOT NULL,
    "BrandProductName" character varying(70) NOT NULL,
    "BrandProductActive" boolean NOT NULL
);


ALTER TABLE public."BrandProduct" OWNER TO postgres;

--
-- Name: COLUMN "BrandProduct"."BrandProductId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."BrandProduct"."BrandProductId" IS '';


--
-- Name: COLUMN "BrandProduct"."BrandProductName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."BrandProduct"."BrandProductName" IS '';


--
-- Name: COLUMN "BrandProduct"."BrandProductActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."BrandProduct"."BrandProductActive" IS '';


--
-- Name: BrandProduct_BrandProductId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."BrandProduct_BrandProductId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."BrandProduct_BrandProductId_seq" OWNER TO postgres;

--
-- Name: BrandProduct_BrandProductId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."BrandProduct_BrandProductId_seq" OWNED BY public."BrandProduct"."BrandProductId";


--
-- Name: BusinessStatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BusinessStatus" (
    "BusinessStatusId" integer NOT NULL,
    "BusinessStatusName" character varying(80) NOT NULL,
    "BusinessStatusActive" boolean NOT NULL,
    "BusinessStatusDetail" boolean NOT NULL
);


ALTER TABLE public."BusinessStatus" OWNER TO postgres;

--
-- Name: COLUMN "BusinessStatus"."BusinessStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."BusinessStatus"."BusinessStatusId" IS '';


--
-- Name: COLUMN "BusinessStatus"."BusinessStatusName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."BusinessStatus"."BusinessStatusName" IS '';


--
-- Name: COLUMN "BusinessStatus"."BusinessStatusActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."BusinessStatus"."BusinessStatusActive" IS '';


--
-- Name: COLUMN "BusinessStatus"."BusinessStatusDetail"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."BusinessStatus"."BusinessStatusDetail" IS '';


--
-- Name: BusinessStatus_BusinessStatusId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."BusinessStatus_BusinessStatusId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."BusinessStatus_BusinessStatusId_seq" OWNER TO postgres;

--
-- Name: BusinessStatus_BusinessStatusId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."BusinessStatus_BusinessStatusId_seq" OWNED BY public."BusinessStatus"."BusinessStatusId";


--
-- Name: CodeStatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CodeStatus" (
    "CodeStatusId" integer NOT NULL,
    "CodeStatusName" character varying(50) NOT NULL,
    "CodeStatusActive" boolean NOT NULL
);


ALTER TABLE public."CodeStatus" OWNER TO postgres;

--
-- Name: COLUMN "CodeStatus"."CodeStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."CodeStatus"."CodeStatusId" IS '';


--
-- Name: COLUMN "CodeStatus"."CodeStatusName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."CodeStatus"."CodeStatusName" IS '';


--
-- Name: COLUMN "CodeStatus"."CodeStatusActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."CodeStatus"."CodeStatusActive" IS '';


--
-- Name: CodeStatus_CodeStatusId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."CodeStatus_CodeStatusId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CodeStatus_CodeStatusId_seq" OWNER TO postgres;

--
-- Name: CodeStatus_CodeStatusId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CodeStatus_CodeStatusId_seq" OWNED BY public."CodeStatus"."CodeStatusId";


--
-- Name: Company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Company" (
    "CompanyId" bigint NOT NULL,
    "CompanyName" character varying(200) NOT NULL,
    "CompanyNIT" character varying(35) NOT NULL,
    "CompanyActive" boolean NOT NULL,
    "CompanyGLN" character varying(35) NOT NULL,
    "TypeId" integer NOT NULL,
    "CompanyHomologated" boolean NOT NULL
);


ALTER TABLE public."Company" OWNER TO postgres;

--
-- Name: COLUMN "Company"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Company"."CompanyId" IS 'Company Identifier';


--
-- Name: COLUMN "Company"."CompanyName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Company"."CompanyName" IS 'Company name or business Name';


--
-- Name: COLUMN "Company"."CompanyNIT"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Company"."CompanyNIT" IS 'Company NIT';


--
-- Name: COLUMN "Company"."CompanyActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Company"."CompanyActive" IS 'Indicate if tyhe company is active';


--
-- Name: COLUMN "Company"."CompanyGLN"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Company"."CompanyGLN" IS 'Company location';


--
-- Name: COLUMN "Company"."TypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Company"."TypeId" IS 'Type identifier of company';


--
-- Name: COLUMN "Company"."CompanyHomologated"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Company"."CompanyHomologated" IS 'Indicate if company is homologated';


--
-- Name: CompanyExemptByLine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CompanyExemptByLine" (
    "CompanyId" bigint NOT NULL,
    "LineId" integer NOT NULL
);


ALTER TABLE public."CompanyExemptByLine" OWNER TO postgres;

--
-- Name: COLUMN "CompanyExemptByLine"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."CompanyExemptByLine"."CompanyId" IS '';


--
-- Name: COLUMN "CompanyExemptByLine"."LineId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."CompanyExemptByLine"."LineId" IS '';


--
-- Name: Company_CompanyId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Company_CompanyId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Company_CompanyId_seq" OWNER TO postgres;

--
-- Name: Company_CompanyId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Company_CompanyId_seq" OWNED BY public."Company"."CompanyId";


--
-- Name: Country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Country" (
    "CountryId" integer NOT NULL,
    "CountryName" character varying(50) NOT NULL,
    "CountryCode" character varying(3) NOT NULL
);


ALTER TABLE public."Country" OWNER TO postgres;

--
-- Name: COLUMN "Country"."CountryId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Country"."CountryId" IS '';


--
-- Name: COLUMN "Country"."CountryName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Country"."CountryName" IS '';


--
-- Name: COLUMN "Country"."CountryCode"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Country"."CountryCode" IS '';


--
-- Name: Country_CountryId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Country_CountryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Country_CountryId_seq" OWNER TO postgres;

--
-- Name: Country_CountryId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Country_CountryId_seq" OWNED BY public."Country"."CountryId";


--
-- Name: DataType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataType" (
    "DataTypeId" integer NOT NULL,
    "DataTypeName" character varying(100) NOT NULL,
    "DataTypeActive" boolean NOT NULL
);


ALTER TABLE public."DataType" OWNER TO postgres;

--
-- Name: COLUMN "DataType"."DataTypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."DataType"."DataTypeId" IS '';


--
-- Name: COLUMN "DataType"."DataTypeName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."DataType"."DataTypeName" IS '';


--
-- Name: COLUMN "DataType"."DataTypeActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."DataType"."DataTypeActive" IS '';


--
-- Name: DataType_DataTypeId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DataType_DataTypeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DataType_DataTypeId_seq" OWNER TO postgres;

--
-- Name: DataType_DataTypeId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataType_DataTypeId_seq" OWNED BY public."DataType"."DataTypeId";


--
-- Name: FieldLineProduct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FieldLineProduct" (
    "FieldLineProductId" bigint NOT NULL,
    "FieldLineProductName" character varying(100) NOT NULL,
    "FieldLineProductActive" boolean NOT NULL,
    "DataTypeId" integer NOT NULL,
    "LineId" integer NOT NULL,
    "FieldLineProductRequired" boolean NOT NULL,
    "FieldLineProductLength" integer
);


ALTER TABLE public."FieldLineProduct" OWNER TO postgres;

--
-- Name: COLUMN "FieldLineProduct"."FieldLineProductId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."FieldLineProduct"."FieldLineProductId" IS '';


--
-- Name: COLUMN "FieldLineProduct"."FieldLineProductName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."FieldLineProduct"."FieldLineProductName" IS '';


--
-- Name: COLUMN "FieldLineProduct"."FieldLineProductActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."FieldLineProduct"."FieldLineProductActive" IS '';


--
-- Name: COLUMN "FieldLineProduct"."DataTypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."FieldLineProduct"."DataTypeId" IS '';


--
-- Name: COLUMN "FieldLineProduct"."LineId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."FieldLineProduct"."LineId" IS '';


--
-- Name: COLUMN "FieldLineProduct"."FieldLineProductRequired"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."FieldLineProduct"."FieldLineProductRequired" IS '';


--
-- Name: COLUMN "FieldLineProduct"."FieldLineProductLength"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."FieldLineProduct"."FieldLineProductLength" IS '';


--
-- Name: FieldLineProduct_FieldLineProductId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FieldLineProduct_FieldLineProductId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FieldLineProduct_FieldLineProductId_seq" OWNER TO postgres;

--
-- Name: FieldLineProduct_FieldLineProductId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FieldLineProduct_FieldLineProductId_seq" OWNED BY public."FieldLineProduct"."FieldLineProductId";


--
-- Name: Format; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Format" (
    "FormatId" bigint NOT NULL,
    "FormatName" character varying(100) NOT NULL,
    "CompanyId" bigint NOT NULL,
    "FormatActive" boolean NOT NULL
);


ALTER TABLE public."Format" OWNER TO postgres;

--
-- Name: COLUMN "Format"."FormatId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Format"."FormatId" IS '';


--
-- Name: COLUMN "Format"."FormatName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Format"."FormatName" IS '';


--
-- Name: COLUMN "Format"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Format"."CompanyId" IS '';


--
-- Name: COLUMN "Format"."FormatActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Format"."FormatActive" IS '';


--
-- Name: Format_FormatId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Format_FormatId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Format_FormatId_seq" OWNER TO postgres;

--
-- Name: Format_FormatId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Format_FormatId_seq" OWNED BY public."Format"."FormatId";


--
-- Name: Line; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Line" (
    "LineId" integer NOT NULL,
    "LineName" character varying(50) NOT NULL,
    "LineActive" boolean NOT NULL,
    "LineExempt" boolean NOT NULL
);


ALTER TABLE public."Line" OWNER TO postgres;

--
-- Name: COLUMN "Line"."LineId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Line"."LineId" IS '';


--
-- Name: COLUMN "Line"."LineName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Line"."LineName" IS '';


--
-- Name: COLUMN "Line"."LineActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Line"."LineActive" IS '';


--
-- Name: COLUMN "Line"."LineExempt"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Line"."LineExempt" IS '';


--
-- Name: Line_LineId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Line_LineId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Line_LineId_seq" OWNER TO postgres;

--
-- Name: Line_LineId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Line_LineId_seq" OWNED BY public."Line"."LineId";


--
-- Name: ManufacturerProduct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ManufacturerProduct" (
    "ManufacturerProductId" bigint NOT NULL,
    "ManufacturerProductName" character varying(200) NOT NULL,
    "ManufacturerProductActive" boolean NOT NULL
);


ALTER TABLE public."ManufacturerProduct" OWNER TO postgres;

--
-- Name: COLUMN "ManufacturerProduct"."ManufacturerProductId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ManufacturerProduct"."ManufacturerProductId" IS '';


--
-- Name: COLUMN "ManufacturerProduct"."ManufacturerProductName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ManufacturerProduct"."ManufacturerProductName" IS '';


--
-- Name: COLUMN "ManufacturerProduct"."ManufacturerProductActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ManufacturerProduct"."ManufacturerProductActive" IS '';


--
-- Name: ManufacturerProduct_ManufacturerProductId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ManufacturerProduct_ManufacturerProductId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ManufacturerProduct_ManufacturerProductId_seq" OWNER TO postgres;

--
-- Name: ManufacturerProduct_ManufacturerProductId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ManufacturerProduct_ManufacturerProductId_seq" OWNED BY public."ManufacturerProduct"."ManufacturerProductId";


--
-- Name: Menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Menu" (
    "MenuId" bigint NOT NULL,
    "MenuName" character varying(100) NOT NULL,
    "MenuPath" text NOT NULL,
    "MenuFatherId" bigint,
    "MenuActive" boolean NOT NULL
);


ALTER TABLE public."Menu" OWNER TO postgres;

--
-- Name: COLUMN "Menu"."MenuId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Menu"."MenuId" IS '';


--
-- Name: COLUMN "Menu"."MenuName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Menu"."MenuName" IS '';


--
-- Name: COLUMN "Menu"."MenuPath"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Menu"."MenuPath" IS '';


--
-- Name: COLUMN "Menu"."MenuFatherId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Menu"."MenuFatherId" IS '';


--
-- Name: COLUMN "Menu"."MenuActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Menu"."MenuActive" IS '';


--
-- Name: MenuProfile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MenuProfile" (
    "MenuId" bigint NOT NULL,
    "ProfileId" bigint NOT NULL
);


ALTER TABLE public."MenuProfile" OWNER TO postgres;

--
-- Name: COLUMN "MenuProfile"."MenuId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."MenuProfile"."MenuId" IS '';


--
-- Name: COLUMN "MenuProfile"."ProfileId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."MenuProfile"."ProfileId" IS '';


--
-- Name: Menu_MenuId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Menu_MenuId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Menu_MenuId_seq" OWNER TO postgres;

--
-- Name: Menu_MenuId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Menu_MenuId_seq" OWNED BY public."Menu"."MenuId";


--
-- Name: Module_ModuleId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Module_ModuleId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Module_ModuleId_seq" OWNER TO postgres;

--
-- Name: Module; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Module" (
    "ModuleId" integer DEFAULT nextval('public."Module_ModuleId_seq"'::regclass) NOT NULL,
    "ModuleName" character varying(50) NOT NULL,
    "ModuleActive" boolean NOT NULL
);


ALTER TABLE public."Module" OWNER TO postgres;

--
-- Name: TABLE "Module"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public."Module" IS 'Contain modules of the system';


--
-- Name: ModuleCompany_ModuleCompanyId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ModuleCompany_ModuleCompanyId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ModuleCompany_ModuleCompanyId_seq" OWNER TO postgres;

--
-- Name: ModuleCompany; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ModuleCompany" (
    "ModuleCompanyId" bigint DEFAULT nextval('public."ModuleCompany_ModuleCompanyId_seq"'::regclass) NOT NULL,
    "ModuleId" integer NOT NULL,
    "CompanyId" bigint NOT NULL
);


ALTER TABLE public."ModuleCompany" OWNER TO postgres;

--
-- Name: COLUMN "ModuleCompany"."ModuleCompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ModuleCompany"."ModuleCompanyId" IS 'Module company Identifier';


--
-- Name: COLUMN "ModuleCompany"."ModuleId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ModuleCompany"."ModuleId" IS 'Module Identifier';


--
-- Name: COLUMN "ModuleCompany"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ModuleCompany"."CompanyId" IS 'Company Identifier';


--
-- Name: Negotiation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Negotiation" (
    "NegotiationId" bigint NOT NULL,
    "CompanyIdBuyer" bigint NOT NULL,
    "CompanyIdProvider" bigint NOT NULL,
    "NegotiationCreationDate" timestamp without time zone NOT NULL,
    "NegotiationModifyDate" timestamp without time zone NOT NULL,
    "NegotiationUserBuyer" character varying(50) NOT NULL,
    "NegotiationUserProvider" character varying(50),
    "BusinessStatusId" integer NOT NULL,
    "FormatId" bigint,
    "ActionId" integer NOT NULL
);


ALTER TABLE public."Negotiation" OWNER TO postgres;

--
-- Name: COLUMN "Negotiation"."NegotiationId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."NegotiationId" IS '';


--
-- Name: COLUMN "Negotiation"."CompanyIdBuyer"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."CompanyIdBuyer" IS '';


--
-- Name: COLUMN "Negotiation"."CompanyIdProvider"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."CompanyIdProvider" IS '';


--
-- Name: COLUMN "Negotiation"."NegotiationCreationDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."NegotiationCreationDate" IS '';


--
-- Name: COLUMN "Negotiation"."NegotiationModifyDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."NegotiationModifyDate" IS '';


--
-- Name: COLUMN "Negotiation"."NegotiationUserBuyer"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."NegotiationUserBuyer" IS '';


--
-- Name: COLUMN "Negotiation"."NegotiationUserProvider"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."NegotiationUserProvider" IS '';


--
-- Name: COLUMN "Negotiation"."BusinessStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."BusinessStatusId" IS '';


--
-- Name: COLUMN "Negotiation"."FormatId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."FormatId" IS '';


--
-- Name: COLUMN "Negotiation"."ActionId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Negotiation"."ActionId" IS '';


--
-- Name: NegotiationAttribute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NegotiationAttribute" (
    "NegotiationAttributeId" bigint NOT NULL,
    "NegotiationAttributeName" character varying(100) NOT NULL,
    "NegotiationAttributeActive" boolean NOT NULL,
    "NegotiationAttributeRequired" boolean NOT NULL,
    "CompanyId" bigint NOT NULL,
    "LineId" integer NOT NULL,
    "DataTypeId" integer NOT NULL
);


ALTER TABLE public."NegotiationAttribute" OWNER TO postgres;

--
-- Name: COLUMN "NegotiationAttribute"."NegotiationAttributeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationAttribute"."NegotiationAttributeId" IS '';


--
-- Name: COLUMN "NegotiationAttribute"."NegotiationAttributeName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationAttribute"."NegotiationAttributeName" IS '';


--
-- Name: COLUMN "NegotiationAttribute"."NegotiationAttributeActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationAttribute"."NegotiationAttributeActive" IS '';


--
-- Name: COLUMN "NegotiationAttribute"."NegotiationAttributeRequired"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationAttribute"."NegotiationAttributeRequired" IS '';


--
-- Name: COLUMN "NegotiationAttribute"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationAttribute"."CompanyId" IS '';


--
-- Name: COLUMN "NegotiationAttribute"."LineId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationAttribute"."LineId" IS '';


--
-- Name: COLUMN "NegotiationAttribute"."DataTypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationAttribute"."DataTypeId" IS '';


--
-- Name: NegotiationAttribute_NegotiationAttributeId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."NegotiationAttribute_NegotiationAttributeId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."NegotiationAttribute_NegotiationAttributeId_seq" OWNER TO postgres;

--
-- Name: NegotiationAttribute_NegotiationAttributeId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."NegotiationAttribute_NegotiationAttributeId_seq" OWNED BY public."NegotiationAttribute"."NegotiationAttributeId";


--
-- Name: NegotiationDetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NegotiationDetail" (
    "NegotiationDetailId" bigint NOT NULL,
    "NegotiationId" bigint NOT NULL,
    "BusinessStatusId" integer NOT NULL,
    "ProductGTIN" character varying(14) NOT NULL,
    "NegotiationAttributeId" bigint NOT NULL,
    "NegotiationDetailValue" text NOT NULL,
    "QualifierId" integer
);


ALTER TABLE public."NegotiationDetail" OWNER TO postgres;

--
-- Name: COLUMN "NegotiationDetail"."NegotiationDetailId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetail"."NegotiationDetailId" IS '';


--
-- Name: COLUMN "NegotiationDetail"."NegotiationId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetail"."NegotiationId" IS '';


--
-- Name: COLUMN "NegotiationDetail"."BusinessStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetail"."BusinessStatusId" IS '';


--
-- Name: COLUMN "NegotiationDetail"."ProductGTIN"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetail"."ProductGTIN" IS '';


--
-- Name: COLUMN "NegotiationDetail"."NegotiationAttributeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetail"."NegotiationAttributeId" IS '';


--
-- Name: COLUMN "NegotiationDetail"."NegotiationDetailValue"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetail"."NegotiationDetailValue" IS '';


--
-- Name: COLUMN "NegotiationDetail"."QualifierId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetail"."QualifierId" IS '';


--
-- Name: NegotiationDetailHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NegotiationDetailHistory" (
    "NegotiationDetailId" bigint NOT NULL,
    "NegotiationId" bigint NOT NULL,
    "BusinessStatusId" integer NOT NULL,
    "ProductGTIN" character varying(14) NOT NULL,
    "NegotiationAttributeId" bigint NOT NULL,
    "NegotiationDetailValue" text NOT NULL,
    "NegotiationDetailHistoryId" bigint NOT NULL
);


ALTER TABLE public."NegotiationDetailHistory" OWNER TO postgres;

--
-- Name: COLUMN "NegotiationDetailHistory"."NegotiationDetailId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetailHistory"."NegotiationDetailId" IS '';


--
-- Name: COLUMN "NegotiationDetailHistory"."NegotiationId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetailHistory"."NegotiationId" IS '';


--
-- Name: COLUMN "NegotiationDetailHistory"."BusinessStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetailHistory"."BusinessStatusId" IS '';


--
-- Name: COLUMN "NegotiationDetailHistory"."ProductGTIN"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetailHistory"."ProductGTIN" IS '';


--
-- Name: COLUMN "NegotiationDetailHistory"."NegotiationAttributeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetailHistory"."NegotiationAttributeId" IS '';


--
-- Name: COLUMN "NegotiationDetailHistory"."NegotiationDetailValue"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationDetailHistory"."NegotiationDetailValue" IS '';


--
-- Name: NegotiationDetailHistory_NegotiationDetailHistoryId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."NegotiationDetailHistory_NegotiationDetailHistoryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."NegotiationDetailHistory_NegotiationDetailHistoryId_seq" OWNER TO postgres;

--
-- Name: NegotiationDetailHistory_NegotiationDetailHistoryId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."NegotiationDetailHistory_NegotiationDetailHistoryId_seq" OWNED BY public."NegotiationDetailHistory"."NegotiationDetailHistoryId";


--
-- Name: NegotiationDetail_NegotiationDetailId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."NegotiationDetail_NegotiationDetailId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."NegotiationDetail_NegotiationDetailId_seq" OWNER TO postgres;

--
-- Name: NegotiationDetail_NegotiationDetailId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."NegotiationDetail_NegotiationDetailId_seq" OWNED BY public."NegotiationDetail"."NegotiationDetailId";


--
-- Name: NegotiationHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NegotiationHistory" (
    "NegotiationId" bigint NOT NULL,
    "CompanyIdBuyer" bigint NOT NULL,
    "CompanyIdProvider" bigint NOT NULL,
    "NegotiationCreationDate" timestamp without time zone NOT NULL,
    "NegotiationModifyDate" timestamp without time zone NOT NULL,
    "NegotiationUserBuyer" character varying(50) NOT NULL,
    "NegotiationUserProvider" character varying(50),
    "BusinessStatusId" integer NOT NULL,
    "FormatId" bigint,
    "ActionId" integer NOT NULL,
    "NegotiationHistoryId" bigint NOT NULL
);


ALTER TABLE public."NegotiationHistory" OWNER TO postgres;

--
-- Name: COLUMN "NegotiationHistory"."NegotiationId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."NegotiationId" IS '';


--
-- Name: COLUMN "NegotiationHistory"."CompanyIdBuyer"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."CompanyIdBuyer" IS '';


--
-- Name: COLUMN "NegotiationHistory"."CompanyIdProvider"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."CompanyIdProvider" IS '';


--
-- Name: COLUMN "NegotiationHistory"."NegotiationCreationDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."NegotiationCreationDate" IS '';


--
-- Name: COLUMN "NegotiationHistory"."NegotiationModifyDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."NegotiationModifyDate" IS '';


--
-- Name: COLUMN "NegotiationHistory"."NegotiationUserBuyer"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."NegotiationUserBuyer" IS '';


--
-- Name: COLUMN "NegotiationHistory"."NegotiationUserProvider"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."NegotiationUserProvider" IS '';


--
-- Name: COLUMN "NegotiationHistory"."BusinessStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."BusinessStatusId" IS '';


--
-- Name: COLUMN "NegotiationHistory"."FormatId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."FormatId" IS '';


--
-- Name: COLUMN "NegotiationHistory"."ActionId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NegotiationHistory"."ActionId" IS '';


--
-- Name: NegotiationHistory_NegotiationHistoryId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."NegotiationHistory_NegotiationHistoryId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."NegotiationHistory_NegotiationHistoryId_seq" OWNER TO postgres;

--
-- Name: NegotiationHistory_NegotiationHistoryId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."NegotiationHistory_NegotiationHistoryId_seq" OWNED BY public."NegotiationHistory"."NegotiationHistoryId";


--
-- Name: Negotiation_NegotiationId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Negotiation_NegotiationId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Negotiation_NegotiationId_seq" OWNER TO postgres;

--
-- Name: Negotiation_NegotiationId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Negotiation_NegotiationId_seq" OWNED BY public."Negotiation"."NegotiationId";


--
-- Name: NotificationAssignment_NotificationAssignmentId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."NotificationAssignment_NotificationAssignmentId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."NotificationAssignment_NotificationAssignmentId_seq" OWNER TO postgres;

--
-- Name: NotificationAssignment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NotificationAssignment" (
    "NotificationTypeId" integer DEFAULT nextval('public."NotificationAssignment_NotificationAssignmentId_seq"'::regclass) NOT NULL,
    "ProfileId" bigint NOT NULL,
    "UserIdentification" character varying(50) NOT NULL
);


ALTER TABLE public."NotificationAssignment" OWNER TO postgres;

--
-- Name: COLUMN "NotificationAssignment"."NotificationTypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NotificationAssignment"."NotificationTypeId" IS 'Notification Type Identifier';


--
-- Name: COLUMN "NotificationAssignment"."ProfileId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NotificationAssignment"."ProfileId" IS 'Profile identifier';


--
-- Name: COLUMN "NotificationAssignment"."UserIdentification"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NotificationAssignment"."UserIdentification" IS 'User Identification';


--
-- Name: NotificationType_NotificationTypeId; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."NotificationType_NotificationTypeId"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."NotificationType_NotificationTypeId" OWNER TO postgres;

--
-- Name: NotificationType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."NotificationType" (
    "NotificationTypeId" integer DEFAULT nextval('public."NotificationType_NotificationTypeId"'::regclass) NOT NULL,
    "NotificationTypeName" character varying(200) NOT NULL
);


ALTER TABLE public."NotificationType" OWNER TO postgres;

--
-- Name: COLUMN "NotificationType"."NotificationTypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NotificationType"."NotificationTypeId" IS 'Notification Type Id';


--
-- Name: COLUMN "NotificationType"."NotificationTypeName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."NotificationType"."NotificationTypeName" IS 'Notification Type Name';


--
-- Name: PackagingType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PackagingType" (
    "PackagingTypeId" integer NOT NULL,
    "PackagingTypeName" character varying(200) NOT NULL,
    "PackagingTypeActive" boolean NOT NULL
);


ALTER TABLE public."PackagingType" OWNER TO postgres;

--
-- Name: COLUMN "PackagingType"."PackagingTypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."PackagingType"."PackagingTypeId" IS '';


--
-- Name: COLUMN "PackagingType"."PackagingTypeName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."PackagingType"."PackagingTypeName" IS '';


--
-- Name: COLUMN "PackagingType"."PackagingTypeActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."PackagingType"."PackagingTypeActive" IS '';


--
-- Name: PackagingType_PackagingTypeId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PackagingType_PackagingTypeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."PackagingType_PackagingTypeId_seq" OWNER TO postgres;

--
-- Name: PackagingType_PackagingTypeId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PackagingType_PackagingTypeId_seq" OWNED BY public."PackagingType"."PackagingTypeId";


--
-- Name: PointOfSale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PointOfSale" (
    "PointOfSaleId" bigint NOT NULL,
    "PointOfSaleName" character varying(100) NOT NULL,
    "PointOfSaleActive" boolean NOT NULL,
    "PointOfSaleGLN" character varying(35) NOT NULL,
    "CompanyId" bigint
);


ALTER TABLE public."PointOfSale" OWNER TO postgres;

--
-- Name: COLUMN "PointOfSale"."PointOfSaleId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."PointOfSale"."PointOfSaleId" IS '';


--
-- Name: COLUMN "PointOfSale"."PointOfSaleName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."PointOfSale"."PointOfSaleName" IS '';


--
-- Name: COLUMN "PointOfSale"."PointOfSaleActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."PointOfSale"."PointOfSaleActive" IS '';


--
-- Name: COLUMN "PointOfSale"."PointOfSaleGLN"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."PointOfSale"."PointOfSaleGLN" IS '';


--
-- Name: COLUMN "PointOfSale"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."PointOfSale"."CompanyId" IS '';


--
-- Name: PointOfSale_PointOfSaleId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PointOfSale_PointOfSaleId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."PointOfSale_PointOfSaleId_seq" OWNER TO postgres;

--
-- Name: PointOfSale_PointOfSaleId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PointOfSale_PointOfSaleId_seq" OWNED BY public."PointOfSale"."PointOfSaleId";


--
-- Name: Product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Product" (
    "ProductGTIN" character varying(14) NOT NULL,
    "SubLineId" bigint NOT NULL,
    "CodeStatusId" integer NOT NULL,
    "ManufacturerProductId" bigint NOT NULL,
    "BrandProductId" bigint NOT NULL,
    "ProductHeight" numeric(18,2) NOT NULL,
    "ProductWidth" numeric(18,2) NOT NULL,
    "ProductDepth" numeric(18,2) NOT NULL,
    "ProductGrossWeight" numeric(18,2) NOT NULL,
    "ProductNetContent" numeric(18,2) NOT NULL,
    "ProductVerify" boolean NOT NULL,
    "VerifyObservationId" integer NOT NULL,
    "ProductCharacteristic" character varying(100) NOT NULL,
    "PackagingTypeId" integer NOT NULL,
    "QualifierIdDimension" integer NOT NULL,
    "QualifierIdGrossWeight" integer NOT NULL,
    "QualifierIdNetContent" integer NOT NULL,
    "CountryId" integer NOT NULL
);


ALTER TABLE public."Product" OWNER TO postgres;

--
-- Name: COLUMN "Product"."ProductGTIN"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."ProductGTIN" IS '';


--
-- Name: COLUMN "Product"."SubLineId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."SubLineId" IS '';


--
-- Name: COLUMN "Product"."CodeStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."CodeStatusId" IS '';


--
-- Name: COLUMN "Product"."ManufacturerProductId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."ManufacturerProductId" IS '';


--
-- Name: COLUMN "Product"."BrandProductId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."BrandProductId" IS '';


--
-- Name: COLUMN "Product"."ProductHeight"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."ProductHeight" IS '';


--
-- Name: COLUMN "Product"."ProductWidth"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."ProductWidth" IS '';


--
-- Name: COLUMN "Product"."ProductDepth"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."ProductDepth" IS '';


--
-- Name: COLUMN "Product"."ProductGrossWeight"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."ProductGrossWeight" IS '';


--
-- Name: COLUMN "Product"."ProductNetContent"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."ProductNetContent" IS '';


--
-- Name: COLUMN "Product"."ProductVerify"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."ProductVerify" IS '';


--
-- Name: COLUMN "Product"."VerifyObservationId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."VerifyObservationId" IS '';


--
-- Name: COLUMN "Product"."ProductCharacteristic"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."ProductCharacteristic" IS '';


--
-- Name: COLUMN "Product"."PackagingTypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."PackagingTypeId" IS '';


--
-- Name: COLUMN "Product"."QualifierIdDimension"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."QualifierIdDimension" IS '';


--
-- Name: COLUMN "Product"."QualifierIdGrossWeight"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."QualifierIdGrossWeight" IS '';


--
-- Name: COLUMN "Product"."QualifierIdNetContent"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."QualifierIdNetContent" IS '';


--
-- Name: COLUMN "Product"."CountryId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Product"."CountryId" IS '';


--
-- Name: ProductBuyer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProductBuyer" (
    "ProductStatusId" integer NOT NULL,
    "CompanyId" bigint NOT NULL
);


ALTER TABLE public."ProductBuyer" OWNER TO postgres;

--
-- Name: COLUMN "ProductBuyer"."ProductStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ProductBuyer"."ProductStatusId" IS '';


--
-- Name: COLUMN "ProductBuyer"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ProductBuyer"."CompanyId" IS '';


--
-- Name: ProductDetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProductDetail" (
    "ProductDetailId" bigint NOT NULL,
    "ProductGTIN" character varying(14) NOT NULL,
    "FieldLineProductId" bigint NOT NULL,
    "ProductDetailValue" text NOT NULL
);


ALTER TABLE public."ProductDetail" OWNER TO postgres;

--
-- Name: COLUMN "ProductDetail"."ProductDetailId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ProductDetail"."ProductDetailId" IS '';


--
-- Name: COLUMN "ProductDetail"."ProductGTIN"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ProductDetail"."ProductGTIN" IS '';


--
-- Name: COLUMN "ProductDetail"."FieldLineProductId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ProductDetail"."FieldLineProductId" IS '';


--
-- Name: COLUMN "ProductDetail"."ProductDetailValue"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ProductDetail"."ProductDetailValue" IS '';


--
-- Name: ProductDetail_ProductDetailId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProductDetail_ProductDetailId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ProductDetail_ProductDetailId_seq" OWNER TO postgres;

--
-- Name: ProductDetail_ProductDetailId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProductDetail_ProductDetailId_seq" OWNED BY public."ProductDetail"."ProductDetailId";


--
-- Name: ProductStatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProductStatus" (
    "ProducStatusId" integer NOT NULL,
    "ProducStatusName" character varying(50) NOT NULL,
    "ProducStatusActive" boolean NOT NULL
);


ALTER TABLE public."ProductStatus" OWNER TO postgres;

--
-- Name: COLUMN "ProductStatus"."ProducStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ProductStatus"."ProducStatusId" IS '';


--
-- Name: COLUMN "ProductStatus"."ProducStatusName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ProductStatus"."ProducStatusName" IS '';


--
-- Name: COLUMN "ProductStatus"."ProducStatusActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."ProductStatus"."ProducStatusActive" IS '';


--
-- Name: ProductStatus_ProducStatusId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProductStatus_ProducStatusId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ProductStatus_ProducStatusId_seq" OWNER TO postgres;

--
-- Name: ProductStatus_ProducStatusId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProductStatus_ProducStatusId_seq" OWNED BY public."ProductStatus"."ProducStatusId";


--
-- Name: Profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Profile" (
    "ProfileId" bigint NOT NULL,
    "ProfileName" character varying(100) NOT NULL,
    "ProfileActive" boolean NOT NULL,
    "CompanyId" bigint NOT NULL
);


ALTER TABLE public."Profile" OWNER TO postgres;

--
-- Name: COLUMN "Profile"."ProfileId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Profile"."ProfileId" IS '';


--
-- Name: COLUMN "Profile"."ProfileName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Profile"."ProfileName" IS '';


--
-- Name: COLUMN "Profile"."ProfileActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Profile"."ProfileActive" IS '';


--
-- Name: COLUMN "Profile"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Profile"."CompanyId" IS '';


--
-- Name: Profile_ProfileId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Profile_ProfileId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Profile_ProfileId_seq" OWNER TO postgres;

--
-- Name: Profile_ProfileId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Profile_ProfileId_seq" OWNED BY public."Profile"."ProfileId";


--
-- Name: Qualifier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Qualifier" (
    "QualifierId" integer NOT NULL,
    "QualifierName" character varying(50) NOT NULL,
    "QualifierActivate" boolean NOT NULL,
    "QualifierTypeType" character varying(15) NOT NULL
);


ALTER TABLE public."Qualifier" OWNER TO postgres;

--
-- Name: COLUMN "Qualifier"."QualifierId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Qualifier"."QualifierId" IS '';


--
-- Name: COLUMN "Qualifier"."QualifierName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Qualifier"."QualifierName" IS '';


--
-- Name: COLUMN "Qualifier"."QualifierActivate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Qualifier"."QualifierActivate" IS '';


--
-- Name: COLUMN "Qualifier"."QualifierTypeType"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Qualifier"."QualifierTypeType" IS '';


--
-- Name: QualifierType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."QualifierType" (
    "QualifierTypeId" integer NOT NULL,
    "QualifierTypeName" character varying(50) NOT NULL,
    "QualifierTypeActive" boolean NOT NULL,
    "QualifierTypeType" character varying(15) NOT NULL
);


ALTER TABLE public."QualifierType" OWNER TO postgres;

--
-- Name: COLUMN "QualifierType"."QualifierTypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."QualifierType"."QualifierTypeId" IS '';


--
-- Name: COLUMN "QualifierType"."QualifierTypeName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."QualifierType"."QualifierTypeName" IS '';


--
-- Name: COLUMN "QualifierType"."QualifierTypeActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."QualifierType"."QualifierTypeActive" IS '';


--
-- Name: COLUMN "QualifierType"."QualifierTypeType"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."QualifierType"."QualifierTypeType" IS '';


--
-- Name: Qualifier_QualifierId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Qualifier_QualifierId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Qualifier_QualifierId_seq" OWNER TO postgres;

--
-- Name: Qualifier_QualifierId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Qualifier_QualifierId_seq" OWNED BY public."Qualifier"."QualifierId";


--
-- Name: RequestService_RequestServiceId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RequestService_RequestServiceId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RequestService_RequestServiceId_seq" OWNER TO postgres;

--
-- Name: RequestService; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RequestService" (
    "RequestServiceId" bigint DEFAULT nextval('public."RequestService_RequestServiceId_seq"'::regclass) NOT NULL,
    "RequestServiceNit" character varying(35) NOT NULL,
    "RequestServiceBusinessName" character varying(200) NOT NULL,
    "RequestServiceUserName" character varying(80) NOT NULL,
    "RequestServiceMail" character varying(200) NOT NULL,
    "RequestServicePosition" character varying(100) NOT NULL,
    "RequestServiceObservation" character varying(250) NOT NULL,
    "RequestStatusId" integer NOT NULL,
    "RequestServicePhone" character varying(50) NOT NULL,
    "RequestServiceProduct" text NOT NULL,
    "RequestServiceDate" timestamp without time zone NOT NULL,
    "RequestServiceUserAnswer" character varying(80),
    "RequestServiceAnswer" text,
    "CompanyId" bigint NOT NULL
);


ALTER TABLE public."RequestService" OWNER TO postgres;

--
-- Name: COLUMN "RequestService"."RequestServiceId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceId" IS 'Request Service Identifier';


--
-- Name: COLUMN "RequestService"."RequestServiceNit"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceNit" IS 'Company NIT';


--
-- Name: COLUMN "RequestService"."RequestServiceBusinessName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceBusinessName" IS 'Company name or business Name';


--
-- Name: COLUMN "RequestService"."RequestServiceUserName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceUserName" IS 'User names';


--
-- Name: COLUMN "RequestService"."RequestServiceMail"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceMail" IS 'Mail of request service';


--
-- Name: COLUMN "RequestService"."RequestServicePosition"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServicePosition" IS 'User position';


--
-- Name: COLUMN "RequestService"."RequestServiceObservation"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceObservation" IS 'Request Service Observation';


--
-- Name: COLUMN "RequestService"."RequestStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestStatusId" IS 'Request status identifier';


--
-- Name: COLUMN "RequestService"."RequestServicePhone"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServicePhone" IS 'User phone ';


--
-- Name: COLUMN "RequestService"."RequestServiceProduct"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceProduct" IS 'products to buy';


--
-- Name: COLUMN "RequestService"."RequestServiceDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceDate" IS 'Request Service date';


--
-- Name: COLUMN "RequestService"."RequestServiceUserAnswer"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceUserAnswer" IS 'user who answers the request';


--
-- Name: COLUMN "RequestService"."RequestServiceAnswer"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."RequestServiceAnswer" IS 'Service Answer';


--
-- Name: COLUMN "RequestService"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestService"."CompanyId" IS 'Company identifier';


--
-- Name: RequestStatus_RequestStatusId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RequestStatus_RequestStatusId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RequestStatus_RequestStatusId_seq" OWNER TO postgres;

--
-- Name: RequestStatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RequestStatus" (
    "RequestStatusId" integer DEFAULT nextval('public."RequestStatus_RequestStatusId_seq"'::regclass) NOT NULL,
    "RequestStatusName" character varying(50) NOT NULL,
    "RequestStatusActive" boolean NOT NULL
);


ALTER TABLE public."RequestStatus" OWNER TO postgres;

--
-- Name: COLUMN "RequestStatus"."RequestStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestStatus"."RequestStatusId" IS 'Request status identifier';


--
-- Name: COLUMN "RequestStatus"."RequestStatusName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestStatus"."RequestStatusName" IS 'Request status name';


--
-- Name: COLUMN "RequestStatus"."RequestStatusActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestStatus"."RequestStatusActive" IS 'Indicate if Request status is active';


--
-- Name: RequestUser_RequestUserId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RequestUser_RequestUserId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RequestUser_RequestUserId_seq" OWNER TO postgres;

--
-- Name: RequestUser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RequestUser" (
    "RequestUserid" bigint DEFAULT nextval('public."RequestUser_RequestUserId_seq"'::regclass) NOT NULL,
    "RequestUserNit" character varying(35) NOT NULL,
    "RequestUserName" character varying(80) NOT NULL,
    "RequestUserMail" character varying(200) NOT NULL,
    "RequestUserPosition" character varying(100) NOT NULL,
    "RequestUserObservation" character varying(250) NOT NULL,
    "RequestStatusId" integer NOT NULL,
    "RequestUserDate" timestamp without time zone NOT NULL,
    "RequestUserUserAnswer" character varying(80),
    "RequestUserAnswer" text,
    "RequestUserDateAnswer" timestamp without time zone,
    "CompanyId" bigint NOT NULL
);


ALTER TABLE public."RequestUser" OWNER TO postgres;

--
-- Name: COLUMN "RequestUser"."RequestUserid"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserid" IS 'Request user identification';


--
-- Name: COLUMN "RequestUser"."RequestUserNit"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserNit" IS 'Company Nit of user';


--
-- Name: COLUMN "RequestUser"."RequestUserName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserName" IS 'User names';


--
-- Name: COLUMN "RequestUser"."RequestUserMail"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserMail" IS 'User mail';


--
-- Name: COLUMN "RequestUser"."RequestUserPosition"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserPosition" IS 'User position';


--
-- Name: COLUMN "RequestUser"."RequestUserObservation"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserObservation" IS 'observation of the request';


--
-- Name: COLUMN "RequestUser"."RequestStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestStatusId" IS 'Request status identifier';


--
-- Name: COLUMN "RequestUser"."RequestUserDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserDate" IS 'Request date';


--
-- Name: COLUMN "RequestUser"."RequestUserUserAnswer"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserUserAnswer" IS 'user who answers the request';


--
-- Name: COLUMN "RequestUser"."RequestUserAnswer"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserAnswer" IS 'Answer of request';


--
-- Name: COLUMN "RequestUser"."RequestUserDateAnswer"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."RequestUserDateAnswer" IS 'Date Answer of the request';


--
-- Name: COLUMN "RequestUser"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."RequestUser"."CompanyId" IS 'Company identifier';


--
-- Name: SellerProducts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SellerProducts" (
    "ProductGTIN" character varying(14) NOT NULL,
    "CompanyId" bigint NOT NULL,
    "ProductStatusId" integer NOT NULL
);


ALTER TABLE public."SellerProducts" OWNER TO postgres;

--
-- Name: COLUMN "SellerProducts"."ProductGTIN"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SellerProducts"."ProductGTIN" IS '';


--
-- Name: COLUMN "SellerProducts"."CompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SellerProducts"."CompanyId" IS '';


--
-- Name: COLUMN "SellerProducts"."ProductStatusId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SellerProducts"."ProductStatusId" IS '';


--
-- Name: SubLine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SubLine" (
    "SubLineId" bigint NOT NULL,
    "SubLineName" character varying(50) NOT NULL,
    "SubLineActive" boolean NOT NULL,
    "SubLineFatherId" bigint,
    "LineId" integer NOT NULL,
    "SubLineCreateDate" timestamp without time zone NOT NULL,
    "SubLineModifyDate" timestamp without time zone NOT NULL,
    "SubLineCode" character varying(80)
);


ALTER TABLE public."SubLine" OWNER TO postgres;

--
-- Name: COLUMN "SubLine"."SubLineId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SubLine"."SubLineId" IS '';


--
-- Name: COLUMN "SubLine"."SubLineName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SubLine"."SubLineName" IS '';


--
-- Name: COLUMN "SubLine"."SubLineActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SubLine"."SubLineActive" IS '';


--
-- Name: COLUMN "SubLine"."SubLineFatherId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SubLine"."SubLineFatherId" IS '';


--
-- Name: COLUMN "SubLine"."LineId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SubLine"."LineId" IS '';


--
-- Name: COLUMN "SubLine"."SubLineCreateDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SubLine"."SubLineCreateDate" IS '';


--
-- Name: COLUMN "SubLine"."SubLineModifyDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SubLine"."SubLineModifyDate" IS '';


--
-- Name: COLUMN "SubLine"."SubLineCode"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."SubLine"."SubLineCode" IS '';


--
-- Name: SubLine_SubLineId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SubLine_SubLineId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SubLine_SubLineId_seq" OWNER TO postgres;

--
-- Name: SubLine_SubLineId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SubLine_SubLineId_seq" OWNED BY public."SubLine"."SubLineId";


--
-- Name: Type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Type" (
    "TypeId" integer NOT NULL,
    "TypeName" character varying(80) NOT NULL,
    "TypeActibe" boolean NOT NULL
);


ALTER TABLE public."Type" OWNER TO postgres;

--
-- Name: COLUMN "Type"."TypeId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Type"."TypeId" IS '';


--
-- Name: COLUMN "Type"."TypeName"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Type"."TypeName" IS '';


--
-- Name: COLUMN "Type"."TypeActibe"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Type"."TypeActibe" IS '';


--
-- Name: Type_TypeId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Type_TypeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Type_TypeId_seq" OWNER TO postgres;

--
-- Name: Type_TypeId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Type_TypeId_seq" OWNED BY public."Type"."TypeId";


--
-- Name: UserHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserHistory" (
    "UserHistoryId" bigint NOT NULL,
    "UserHistoryModifiedUser" character varying(35) NOT NULL,
    "UserHistoryModifiedFiled" text NOT NULL,
    "UserHistoryUserModifier" character varying(100) NOT NULL,
    "UserHistoryModifiedFieldValue" text NOT NULL,
    "UserHistoryModifiedDate" timestamp with time zone NOT NULL,
    "CompanyId" bigint NOT NULL
);


ALTER TABLE public."UserHistory" OWNER TO postgres;

--
-- Name: COLUMN "UserHistory"."UserHistoryId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."UserHistory"."UserHistoryId" IS '';


--
-- Name: COLUMN "UserHistory"."UserHistoryModifiedUser"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."UserHistory"."UserHistoryModifiedUser" IS '';


--
-- Name: COLUMN "UserHistory"."UserHistoryModifiedFiled"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."UserHistory"."UserHistoryModifiedFiled" IS '';


--
-- Name: COLUMN "UserHistory"."UserHistoryUserModifier"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."UserHistory"."UserHistoryUserModifier" IS '';


--
-- Name: Validity_ValidityId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Validity_ValidityId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Validity_ValidityId_seq" OWNER TO postgres;

--
-- Name: Validity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Validity" (
    "ValidityId" bigint DEFAULT nextval('public."Validity_ValidityId_seq"'::regclass) NOT NULL,
    "ValidityBuyDate" timestamp without time zone NOT NULL,
    "ValidityExpiryDate" timestamp without time zone NOT NULL,
    "ValidityTotalNumberTransaction" integer,
    "ValidityRealNumberTransaction" integer,
    "ValidityActive" boolean NOT NULL,
    "ModuleCompanyId" bigint NOT NULL
);


ALTER TABLE public."Validity" OWNER TO postgres;

--
-- Name: COLUMN "Validity"."ValidityId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Validity"."ValidityId" IS 'Validity Identifier';


--
-- Name: COLUMN "Validity"."ValidityBuyDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Validity"."ValidityBuyDate" IS 'Buy Date of module';


--
-- Name: COLUMN "Validity"."ValidityExpiryDate"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Validity"."ValidityExpiryDate" IS 'Epiry date of module';


--
-- Name: COLUMN "Validity"."ValidityTotalNumberTransaction"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Validity"."ValidityTotalNumberTransaction" IS 'Total number of transactions allowed';


--
-- Name: COLUMN "Validity"."ValidityRealNumberTransaction"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Validity"."ValidityRealNumberTransaction" IS 'Real number of transactions allowed';


--
-- Name: COLUMN "Validity"."ValidityActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Validity"."ValidityActive" IS 'Indicate if the validity is active';


--
-- Name: COLUMN "Validity"."ModuleCompanyId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."Validity"."ModuleCompanyId" IS 'Module company identifier';


--
-- Name: VerifyObservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."VerifyObservation" (
    "VerifyObservationId" integer NOT NULL,
    "VerifyObservationDescription" text NOT NULL,
    "VerifyObservationActive" boolean NOT NULL
);


ALTER TABLE public."VerifyObservation" OWNER TO postgres;

--
-- Name: COLUMN "VerifyObservation"."VerifyObservationId"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."VerifyObservation"."VerifyObservationId" IS '';


--
-- Name: COLUMN "VerifyObservation"."VerifyObservationDescription"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."VerifyObservation"."VerifyObservationDescription" IS '';


--
-- Name: COLUMN "VerifyObservation"."VerifyObservationActive"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public."VerifyObservation"."VerifyObservationActive" IS '';


--
-- Name: VerifyObservation_VerifyObservationId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."VerifyObservation_VerifyObservationId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."VerifyObservation_VerifyObservationId_seq" OWNER TO postgres;

--
-- Name: VerifyObservation_VerifyObservationId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."VerifyObservation_VerifyObservationId_seq" OWNED BY public."VerifyObservation"."VerifyObservationId";


--
-- Name: Action ActionId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Action" ALTER COLUMN "ActionId" SET DEFAULT nextval('public."Action_ActionId_seq"'::regclass);


--
-- Name: BrandProduct BrandProductId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BrandProduct" ALTER COLUMN "BrandProductId" SET DEFAULT nextval('public."BrandProduct_BrandProductId_seq"'::regclass);


--
-- Name: BusinessStatus BusinessStatusId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BusinessStatus" ALTER COLUMN "BusinessStatusId" SET DEFAULT nextval('public."BusinessStatus_BusinessStatusId_seq"'::regclass);


--
-- Name: CodeStatus CodeStatusId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CodeStatus" ALTER COLUMN "CodeStatusId" SET DEFAULT nextval('public."CodeStatus_CodeStatusId_seq"'::regclass);


--
-- Name: Company CompanyId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Company" ALTER COLUMN "CompanyId" SET DEFAULT nextval('public."Company_CompanyId_seq"'::regclass);


--
-- Name: Country CountryId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Country" ALTER COLUMN "CountryId" SET DEFAULT nextval('public."Country_CountryId_seq"'::regclass);


--
-- Name: DataType DataTypeId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataType" ALTER COLUMN "DataTypeId" SET DEFAULT nextval('public."DataType_DataTypeId_seq"'::regclass);


--
-- Name: FieldLineProduct FieldLineProductId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldLineProduct" ALTER COLUMN "FieldLineProductId" SET DEFAULT nextval('public."FieldLineProduct_FieldLineProductId_seq"'::regclass);


--
-- Name: Format FormatId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Format" ALTER COLUMN "FormatId" SET DEFAULT nextval('public."Format_FormatId_seq"'::regclass);


--
-- Name: Line LineId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Line" ALTER COLUMN "LineId" SET DEFAULT nextval('public."Line_LineId_seq"'::regclass);


--
-- Name: ManufacturerProduct ManufacturerProductId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ManufacturerProduct" ALTER COLUMN "ManufacturerProductId" SET DEFAULT nextval('public."ManufacturerProduct_ManufacturerProductId_seq"'::regclass);


--
-- Name: Menu MenuId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menu" ALTER COLUMN "MenuId" SET DEFAULT nextval('public."Menu_MenuId_seq"'::regclass);


--
-- Name: Negotiation NegotiationId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Negotiation" ALTER COLUMN "NegotiationId" SET DEFAULT nextval('public."Negotiation_NegotiationId_seq"'::regclass);


--
-- Name: NegotiationAttribute NegotiationAttributeId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationAttribute" ALTER COLUMN "NegotiationAttributeId" SET DEFAULT nextval('public."NegotiationAttribute_NegotiationAttributeId_seq"'::regclass);


--
-- Name: NegotiationDetail NegotiationDetailId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationDetail" ALTER COLUMN "NegotiationDetailId" SET DEFAULT nextval('public."NegotiationDetail_NegotiationDetailId_seq"'::regclass);


--
-- Name: NegotiationDetailHistory NegotiationDetailHistoryId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationDetailHistory" ALTER COLUMN "NegotiationDetailHistoryId" SET DEFAULT nextval('public."NegotiationDetailHistory_NegotiationDetailHistoryId_seq"'::regclass);


--
-- Name: NegotiationHistory NegotiationHistoryId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationHistory" ALTER COLUMN "NegotiationHistoryId" SET DEFAULT nextval('public."NegotiationHistory_NegotiationHistoryId_seq"'::regclass);


--
-- Name: PackagingType PackagingTypeId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PackagingType" ALTER COLUMN "PackagingTypeId" SET DEFAULT nextval('public."PackagingType_PackagingTypeId_seq"'::regclass);


--
-- Name: PointOfSale PointOfSaleId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PointOfSale" ALTER COLUMN "PointOfSaleId" SET DEFAULT nextval('public."PointOfSale_PointOfSaleId_seq"'::regclass);


--
-- Name: ProductDetail ProductDetailId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductDetail" ALTER COLUMN "ProductDetailId" SET DEFAULT nextval('public."ProductDetail_ProductDetailId_seq"'::regclass);


--
-- Name: ProductStatus ProducStatusId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductStatus" ALTER COLUMN "ProducStatusId" SET DEFAULT nextval('public."ProductStatus_ProducStatusId_seq"'::regclass);


--
-- Name: Profile ProfileId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profile" ALTER COLUMN "ProfileId" SET DEFAULT nextval('public."Profile_ProfileId_seq"'::regclass);


--
-- Name: Qualifier QualifierId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Qualifier" ALTER COLUMN "QualifierId" SET DEFAULT nextval('public."Qualifier_QualifierId_seq"'::regclass);


--
-- Name: SubLine SubLineId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubLine" ALTER COLUMN "SubLineId" SET DEFAULT nextval('public."SubLine_SubLineId_seq"'::regclass);


--
-- Name: Type TypeId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Type" ALTER COLUMN "TypeId" SET DEFAULT nextval('public."Type_TypeId_seq"'::regclass);


--
-- Name: VerifyObservation VerifyObservationId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VerifyObservation" ALTER COLUMN "VerifyObservationId" SET DEFAULT nextval('public."VerifyObservation_VerifyObservationId_seq"'::regclass);


--
-- Name: AttributeProductRequired AttributeProductRequired_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AttributeProductRequired"
    ADD CONSTRAINT "AttributeProductRequired_pkey" PRIMARY KEY ("CompanyId", "LineId", "ProductDetailId");


--
-- Name: BoxProduct BoxProduct_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BoxProduct"
    ADD CONSTRAINT "BoxProduct_pkey" PRIMARY KEY ("ProductGTIN", "BoxGTIN14");


--
-- Name: CompanyExemptByLine CompanyExemptByLine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompanyExemptByLine"
    ADD CONSTRAINT "CompanyExemptByLine_pkey" PRIMARY KEY ("CompanyId", "LineId");


--
-- Name: MenuProfile MenuProfile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuProfile"
    ADD CONSTRAINT "MenuProfile_pkey" PRIMARY KEY ("MenuId", "ProfileId");


--
-- Name: ModuleCompany ModuleCompany_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ModuleCompany"
    ADD CONSTRAINT "ModuleCompany_pkey" PRIMARY KEY ("ModuleCompanyId");


--
-- Name: Module Module_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Module"
    ADD CONSTRAINT "Module_pkey" PRIMARY KEY ("ModuleId");


--
-- Name: NegotiationDetailHistory NegotiationDetailHistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationDetailHistory"
    ADD CONSTRAINT "NegotiationDetailHistory_pkey" PRIMARY KEY ("NegotiationDetailHistoryId");


--
-- Name: NegotiationHistory NegotiationHistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationHistory"
    ADD CONSTRAINT "NegotiationHistory_pkey" PRIMARY KEY ("NegotiationHistoryId");


--
-- Name: NotificationAssignment NotificationAssignment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NotificationAssignment"
    ADD CONSTRAINT "NotificationAssignment_pkey" PRIMARY KEY ("NotificationTypeId");


--
-- Name: NotificationType NotificationType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NotificationType"
    ADD CONSTRAINT "NotificationType_pkey" PRIMARY KEY ("NotificationTypeId");


--
-- Name: Action PK_Action; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Action"
    ADD CONSTRAINT "PK_Action" PRIMARY KEY ("ActionId");


--
-- Name: Box PK_Box; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Box"
    ADD CONSTRAINT "PK_Box" PRIMARY KEY ("BoxGTIN14");


--
-- Name: BrandProduct PK_BrandProduct; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BrandProduct"
    ADD CONSTRAINT "PK_BrandProduct" PRIMARY KEY ("BrandProductId");


--
-- Name: BusinessStatus PK_BusinessStatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BusinessStatus"
    ADD CONSTRAINT "PK_BusinessStatus" PRIMARY KEY ("BusinessStatusId");


--
-- Name: CodeStatus PK_CodeStatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CodeStatus"
    ADD CONSTRAINT "PK_CodeStatus" PRIMARY KEY ("CodeStatusId");


--
-- Name: Company PK_Company; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "PK_Company" PRIMARY KEY ("CompanyId");


--
-- Name: Country PK_Country; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "PK_Country" PRIMARY KEY ("CountryId");


--
-- Name: DataType PK_DataType; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataType"
    ADD CONSTRAINT "PK_DataType" PRIMARY KEY ("DataTypeId");


--
-- Name: FieldLineProduct PK_FieldLineProduct; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldLineProduct"
    ADD CONSTRAINT "PK_FieldLineProduct" PRIMARY KEY ("FieldLineProductId");


--
-- Name: Format PK_Format; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Format"
    ADD CONSTRAINT "PK_Format" PRIMARY KEY ("FormatId");


--
-- Name: Line PK_Line; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Line"
    ADD CONSTRAINT "PK_Line" PRIMARY KEY ("LineId");


--
-- Name: ManufacturerProduct PK_ManufacturerProduct; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ManufacturerProduct"
    ADD CONSTRAINT "PK_ManufacturerProduct" PRIMARY KEY ("ManufacturerProductId");


--
-- Name: Menu PK_Menu; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT "PK_Menu" PRIMARY KEY ("MenuId");


--
-- Name: Negotiation PK_Negotiation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Negotiation"
    ADD CONSTRAINT "PK_Negotiation" PRIMARY KEY ("NegotiationId");


--
-- Name: NegotiationAttribute PK_NegotiationAttribute; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationAttribute"
    ADD CONSTRAINT "PK_NegotiationAttribute" PRIMARY KEY ("NegotiationAttributeId");


--
-- Name: NegotiationDetail PK_NegotiationDetail; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationDetail"
    ADD CONSTRAINT "PK_NegotiationDetail" PRIMARY KEY ("NegotiationDetailId");


--
-- Name: PackagingType PK_PackagingType; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PackagingType"
    ADD CONSTRAINT "PK_PackagingType" PRIMARY KEY ("PackagingTypeId");


--
-- Name: PointOfSale PK_PointOfSale; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PointOfSale"
    ADD CONSTRAINT "PK_PointOfSale" PRIMARY KEY ("PointOfSaleId");


--
-- Name: Product PK_Product; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "PK_Product" PRIMARY KEY ("ProductGTIN");


--
-- Name: ProductDetail PK_ProductDetail; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductDetail"
    ADD CONSTRAINT "PK_ProductDetail" PRIMARY KEY ("ProductDetailId");


--
-- Name: ProductStatus PK_ProductStatus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductStatus"
    ADD CONSTRAINT "PK_ProductStatus" PRIMARY KEY ("ProducStatusId");


--
-- Name: Profile PK_Profile; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profile"
    ADD CONSTRAINT "PK_Profile" PRIMARY KEY ("ProfileId");


--
-- Name: Qualifier PK_Qualifier; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Qualifier"
    ADD CONSTRAINT "PK_Qualifier" PRIMARY KEY ("QualifierId");


--
-- Name: QualifierType PK_QualifierType; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QualifierType"
    ADD CONSTRAINT "PK_QualifierType" PRIMARY KEY ("QualifierTypeId");


--
-- Name: SubLine PK_SubLine; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubLine"
    ADD CONSTRAINT "PK_SubLine" PRIMARY KEY ("SubLineId");


--
-- Name: Type PK_Type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Type"
    ADD CONSTRAINT "PK_Type" PRIMARY KEY ("TypeId");


--
-- Name: UserHistory PK_UserHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserHistory"
    ADD CONSTRAINT "PK_UserHistory" PRIMARY KEY ("UserHistoryId");


--
-- Name: VerifyObservation PK_VerifyObservation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."VerifyObservation"
    ADD CONSTRAINT "PK_VerifyObservation" PRIMARY KEY ("VerifyObservationId");


--
-- Name: ProductBuyer ProductBuyer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductBuyer"
    ADD CONSTRAINT "ProductBuyer_pkey" PRIMARY KEY ("ProductStatusId", "CompanyId");


--
-- Name: RequestService RequestService_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RequestService"
    ADD CONSTRAINT "RequestService_pkey" PRIMARY KEY ("RequestServiceId");


--
-- Name: RequestStatus RequestStatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RequestStatus"
    ADD CONSTRAINT "RequestStatus_pkey" PRIMARY KEY ("RequestStatusId");


--
-- Name: SellerProducts SellerProducts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SellerProducts"
    ADD CONSTRAINT "SellerProducts_pkey" PRIMARY KEY ("ProductGTIN", "CompanyId", "ProductStatusId");


--
-- Name: RequestUser requestuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RequestUser"
    ADD CONSTRAINT requestuser_pkey PRIMARY KEY ("RequestUserid");


--
-- Name: Validity validity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Validity"
    ADD CONSTRAINT validity_pkey PRIMARY KEY ("ValidityId");


--
-- Name: fki_FK_UserHistory_Company; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_FK_UserHistory_Company" ON public."UserHistory" USING btree ("CompanyId");


--
-- Name: AttributeProductRequired FK_AttributeProductRequired_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AttributeProductRequired"
    ADD CONSTRAINT "FK_AttributeProductRequired_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: AttributeProductRequired FK_AttributeProductRequired_Line; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AttributeProductRequired"
    ADD CONSTRAINT "FK_AttributeProductRequired_Line" FOREIGN KEY ("LineId") REFERENCES public."Line"("LineId");


--
-- Name: AttributeProductRequired FK_AttributeProductRequired_ProductDetail; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AttributeProductRequired"
    ADD CONSTRAINT "FK_AttributeProductRequired_ProductDetail" FOREIGN KEY ("ProductDetailId") REFERENCES public."ProductDetail"("ProductDetailId");


--
-- Name: BoxProduct FK_BoxProduct_Box; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BoxProduct"
    ADD CONSTRAINT "FK_BoxProduct_Box" FOREIGN KEY ("BoxGTIN14") REFERENCES public."Box"("BoxGTIN14");


--
-- Name: BoxProduct FK_BoxProduct_Product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BoxProduct"
    ADD CONSTRAINT "FK_BoxProduct_Product" FOREIGN KEY ("ProductGTIN") REFERENCES public."Product"("ProductGTIN");


--
-- Name: CompanyExemptByLine FK_CompanyExemptByLine_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompanyExemptByLine"
    ADD CONSTRAINT "FK_CompanyExemptByLine_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: CompanyExemptByLine FK_CompanyExemptByLine_Line; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompanyExemptByLine"
    ADD CONSTRAINT "FK_CompanyExemptByLine_Line" FOREIGN KEY ("LineId") REFERENCES public."Line"("LineId");


--
-- Name: Company FK_Company_Type; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "FK_Company_Type" FOREIGN KEY ("TypeId") REFERENCES public."Type"("TypeId");


--
-- Name: FieldLineProduct FK_FieldLineProduct_DataType; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldLineProduct"
    ADD CONSTRAINT "FK_FieldLineProduct_DataType" FOREIGN KEY ("DataTypeId") REFERENCES public."DataType"("DataTypeId");


--
-- Name: FieldLineProduct FK_FieldLineProduct_Line; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldLineProduct"
    ADD CONSTRAINT "FK_FieldLineProduct_Line" FOREIGN KEY ("LineId") REFERENCES public."Line"("LineId");


--
-- Name: Format FK_Format_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Format"
    ADD CONSTRAINT "FK_Format_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: MenuProfile FK_MenuProfile_Menu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuProfile"
    ADD CONSTRAINT "FK_MenuProfile_Menu" FOREIGN KEY ("MenuId") REFERENCES public."Menu"("MenuId");


--
-- Name: MenuProfile FK_MenuProfile_Profile; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuProfile"
    ADD CONSTRAINT "FK_MenuProfile_Profile" FOREIGN KEY ("ProfileId") REFERENCES public."Profile"("ProfileId");


--
-- Name: Menu FK_Menu_Menu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menu"
    ADD CONSTRAINT "FK_Menu_Menu" FOREIGN KEY ("MenuFatherId") REFERENCES public."Menu"("MenuId");


--
-- Name: ModuleCompany FK_ModuleCompany_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ModuleCompany"
    ADD CONSTRAINT "FK_ModuleCompany_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: ModuleCompany FK_ModuleCompany_Module; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ModuleCompany"
    ADD CONSTRAINT "FK_ModuleCompany_Module" FOREIGN KEY ("ModuleId") REFERENCES public."Module"("ModuleId");


--
-- Name: NegotiationAttribute FK_NegotiationAttribute_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationAttribute"
    ADD CONSTRAINT "FK_NegotiationAttribute_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: NegotiationAttribute FK_NegotiationAttribute_DataType; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationAttribute"
    ADD CONSTRAINT "FK_NegotiationAttribute_DataType" FOREIGN KEY ("DataTypeId") REFERENCES public."DataType"("DataTypeId");


--
-- Name: NegotiationAttribute FK_NegotiationAttribute_Line; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationAttribute"
    ADD CONSTRAINT "FK_NegotiationAttribute_Line" FOREIGN KEY ("LineId") REFERENCES public."Line"("LineId");


--
-- Name: NegotiationDetail FK_NegotiationDetail_BusinessStatus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationDetail"
    ADD CONSTRAINT "FK_NegotiationDetail_BusinessStatus" FOREIGN KEY ("BusinessStatusId") REFERENCES public."BusinessStatus"("BusinessStatusId");


--
-- Name: NegotiationDetail FK_NegotiationDetail_Negotiation; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationDetail"
    ADD CONSTRAINT "FK_NegotiationDetail_Negotiation" FOREIGN KEY ("NegotiationId") REFERENCES public."Negotiation"("NegotiationId");


--
-- Name: NegotiationDetail FK_NegotiationDetail_NegotiationAttribute; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationDetail"
    ADD CONSTRAINT "FK_NegotiationDetail_NegotiationAttribute" FOREIGN KEY ("NegotiationAttributeId") REFERENCES public."NegotiationAttribute"("NegotiationAttributeId");


--
-- Name: NegotiationDetail FK_NegotiationDetail_Product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationDetail"
    ADD CONSTRAINT "FK_NegotiationDetail_Product" FOREIGN KEY ("ProductGTIN") REFERENCES public."Product"("ProductGTIN");


--
-- Name: NegotiationDetail FK_NegotiationDetail_Qualifier; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NegotiationDetail"
    ADD CONSTRAINT "FK_NegotiationDetail_Qualifier" FOREIGN KEY ("QualifierId") REFERENCES public."Qualifier"("QualifierId");


--
-- Name: Negotiation FK_Negotiation_Action; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Negotiation"
    ADD CONSTRAINT "FK_Negotiation_Action" FOREIGN KEY ("ActionId") REFERENCES public."Action"("ActionId");


--
-- Name: Negotiation FK_Negotiation_BusinessStatus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Negotiation"
    ADD CONSTRAINT "FK_Negotiation_BusinessStatus" FOREIGN KEY ("BusinessStatusId") REFERENCES public."BusinessStatus"("BusinessStatusId");


--
-- Name: Negotiation FK_Negotiation_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Negotiation"
    ADD CONSTRAINT "FK_Negotiation_Company" FOREIGN KEY ("CompanyIdBuyer") REFERENCES public."Company"("CompanyId");


--
-- Name: Negotiation FK_Negotiation_Company1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Negotiation"
    ADD CONSTRAINT "FK_Negotiation_Company1" FOREIGN KEY ("CompanyIdProvider") REFERENCES public."Company"("CompanyId");


--
-- Name: Negotiation FK_Negotiation_Format; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Negotiation"
    ADD CONSTRAINT "FK_Negotiation_Format" FOREIGN KEY ("FormatId") REFERENCES public."Format"("FormatId");


--
-- Name: NotificationAssignment FK_NotificationAssignment_NotificationType; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NotificationAssignment"
    ADD CONSTRAINT "FK_NotificationAssignment_NotificationType" FOREIGN KEY ("NotificationTypeId") REFERENCES public."NotificationType"("NotificationTypeId");


--
-- Name: NotificationAssignment FK_NotificationAssignment_Profile; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."NotificationAssignment"
    ADD CONSTRAINT "FK_NotificationAssignment_Profile" FOREIGN KEY ("ProfileId") REFERENCES public."Profile"("ProfileId");


--
-- Name: PointOfSale FK_PointOfSale_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PointOfSale"
    ADD CONSTRAINT "FK_PointOfSale_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: ProductBuyer FK_ProductBuyer_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductBuyer"
    ADD CONSTRAINT "FK_ProductBuyer_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: ProductBuyer FK_ProductBuyer_ProductStatus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductBuyer"
    ADD CONSTRAINT "FK_ProductBuyer_ProductStatus" FOREIGN KEY ("ProductStatusId") REFERENCES public."ProductStatus"("ProducStatusId");


--
-- Name: ProductDetail FK_ProductDetail_FieldLineProduct; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductDetail"
    ADD CONSTRAINT "FK_ProductDetail_FieldLineProduct" FOREIGN KEY ("FieldLineProductId") REFERENCES public."FieldLineProduct"("FieldLineProductId");


--
-- Name: ProductDetail FK_ProductDetail_Product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProductDetail"
    ADD CONSTRAINT "FK_ProductDetail_Product" FOREIGN KEY ("ProductGTIN") REFERENCES public."Product"("ProductGTIN");


--
-- Name: Product FK_Product_BrandProduct; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_BrandProduct" FOREIGN KEY ("BrandProductId") REFERENCES public."BrandProduct"("BrandProductId");


--
-- Name: Product FK_Product_CodeStatus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_CodeStatus" FOREIGN KEY ("CodeStatusId") REFERENCES public."CodeStatus"("CodeStatusId");


--
-- Name: Product FK_Product_Country; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_Country" FOREIGN KEY ("CountryId") REFERENCES public."Country"("CountryId");


--
-- Name: Product FK_Product_ManufacturerProduct; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_ManufacturerProduct" FOREIGN KEY ("ManufacturerProductId") REFERENCES public."ManufacturerProduct"("ManufacturerProductId");


--
-- Name: Product FK_Product_PackagingType; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_PackagingType" FOREIGN KEY ("PackagingTypeId") REFERENCES public."PackagingType"("PackagingTypeId");


--
-- Name: Product FK_Product_Qualifier; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_Qualifier" FOREIGN KEY ("QualifierIdDimension") REFERENCES public."Qualifier"("QualifierId");


--
-- Name: Product FK_Product_Qualifier1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_Qualifier1" FOREIGN KEY ("QualifierIdGrossWeight") REFERENCES public."Qualifier"("QualifierId");


--
-- Name: Product FK_Product_Qualifier2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_Qualifier2" FOREIGN KEY ("QualifierIdNetContent") REFERENCES public."Qualifier"("QualifierId");


--
-- Name: Product FK_Product_SubLine; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_SubLine" FOREIGN KEY ("SubLineId") REFERENCES public."SubLine"("SubLineId");


--
-- Name: Product FK_Product_VerifyObservation; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "FK_Product_VerifyObservation" FOREIGN KEY ("VerifyObservationId") REFERENCES public."VerifyObservation"("VerifyObservationId");


--
-- Name: Profile FK_Profile_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profile"
    ADD CONSTRAINT "FK_Profile_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: RequestService FK_RequestService_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RequestService"
    ADD CONSTRAINT "FK_RequestService_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: RequestService FK_RequestService_RequestStatus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RequestService"
    ADD CONSTRAINT "FK_RequestService_RequestStatus" FOREIGN KEY ("RequestStatusId") REFERENCES public."RequestStatus"("RequestStatusId");


--
-- Name: RequestUser FK_RequestUser_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RequestUser"
    ADD CONSTRAINT "FK_RequestUser_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: RequestUser FK_RequestUser_RequestStatus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RequestUser"
    ADD CONSTRAINT "FK_RequestUser_RequestStatus" FOREIGN KEY ("RequestStatusId") REFERENCES public."RequestStatus"("RequestStatusId");


--
-- Name: SellerProducts FK_SellerProducts_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SellerProducts"
    ADD CONSTRAINT "FK_SellerProducts_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: SellerProducts FK_SellerProducts_Product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SellerProducts"
    ADD CONSTRAINT "FK_SellerProducts_Product" FOREIGN KEY ("ProductGTIN") REFERENCES public."Product"("ProductGTIN");


--
-- Name: SellerProducts FK_SellerProducts_ProductStatus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SellerProducts"
    ADD CONSTRAINT "FK_SellerProducts_ProductStatus" FOREIGN KEY ("ProductStatusId") REFERENCES public."ProductStatus"("ProducStatusId");


--
-- Name: SubLine FK_SubLine_Line; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubLine"
    ADD CONSTRAINT "FK_SubLine_Line" FOREIGN KEY ("LineId") REFERENCES public."Line"("LineId");


--
-- Name: SubLine FK_SubLine_SubLine; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SubLine"
    ADD CONSTRAINT "FK_SubLine_SubLine" FOREIGN KEY ("SubLineFatherId") REFERENCES public."SubLine"("SubLineId");


--
-- Name: UserHistory FK_UserHistory_Company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserHistory"
    ADD CONSTRAINT "FK_UserHistory_Company" FOREIGN KEY ("CompanyId") REFERENCES public."Company"("CompanyId");


--
-- Name: Validity FK_Validity_ModuleCompany; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Validity"
    ADD CONSTRAINT "FK_Validity_ModuleCompany" FOREIGN KEY ("ModuleCompanyId") REFERENCES public."ModuleCompany"("ModuleCompanyId");


--
-- PostgreSQL database dump complete
--

