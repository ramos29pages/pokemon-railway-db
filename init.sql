-- Habilitar extensiones
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Crear tablas para cada tipo
CREATE TABLE IF NOT EXISTS fire_pokemon (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    abilities TEXT[] NOT NULL,
    image_url TEXT,
    description TEXT,
    characteristics JSONB,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Repetir para otros tipos
CREATE TABLE IF NOT EXISTS water_pokemon (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    abilities TEXT[] NOT NULL,
    image_url TEXT,
    description TEXT,
    characteristics JSONB,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);