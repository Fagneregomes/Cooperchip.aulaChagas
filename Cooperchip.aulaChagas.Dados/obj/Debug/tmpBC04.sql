CREATE TABLE [dbo].[Clientes] (
    [ClienteId] [int] NOT NULL IDENTITY,
    [Nome] [nvarchar](max),
    CONSTRAINT [PK_dbo.Clientes] PRIMARY KEY ([ClienteId])
)
CREATE TABLE [dbo].[Telefones] (
    [TelefoneId] [int] NOT NULL IDENTITY,
    [DDD] [nvarchar](max) NOT NULL,
    [Numero] [nvarchar](max) NOT NULL,
    [idTipoTelefone] [int] NOT NULL,
    CONSTRAINT [PK_dbo.Telefones] PRIMARY KEY ([TelefoneId])
)
CREATE INDEX [IX_idTipoTelefone] ON [dbo].[Telefones]([idTipoTelefone])
CREATE TABLE [dbo].[TipoTelefones] (
    [TipoTelefoneId] [int] NOT NULL IDENTITY,
    [Descricao] [nvarchar](12) NOT NULL,
    CONSTRAINT [PK_dbo.TipoTelefones] PRIMARY KEY ([TipoTelefoneId])
)
ALTER TABLE [dbo].[Telefones] ADD CONSTRAINT [FK_dbo.Telefones_dbo.TipoTelefones_idTipoTelefone] FOREIGN KEY ([idTipoTelefone]) REFERENCES [dbo].[TipoTelefones] ([TipoTelefoneId]) ON DELETE CASCADE
CREATE TABLE [dbo].[__MigrationHistory] (
    [MigrationId] [nvarchar](150) NOT NULL,
    [ContextKey] [nvarchar](300) NOT NULL,
    [Model] [varbinary](max) NOT NULL,
    [ProductVersion] [nvarchar](32) NOT NULL,
    CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY ([MigrationId], [ContextKey])
)
INSERT [dbo].[__MigrationHistory]([MigrationId], [ContextKey], [Model], [ProductVersion])
VALUES (N'201710201452558_addForeingKeyParaTipoTelefoneEmTelefone', N'Cooperchip.aulaChagas.Dados.Migrations.Configuration',  0x1F8B0800000000000400D55ACD6EE33610BE17E83B083AB545D6CACFA50DEC5DA4765218DD248B38BBE82D60A4B143942255910A6C147DB21EFA487D850EF56791B464C5C93A297289E9F99F6F389C49FEFDFB9FE18765CCBC474825157CE41F0D0E7D0F782822CA17233F53F3773FFA1FDE7FFBCDF03C8A97DE978AEE44D321279723FF41A9E4340864F8003191839886A99062AE06A188031289E0F8F0F0A7E0E8280014E1A32CCF1BDE645CD118F20FF8712C780889CA08BB141130599EE337B35CAA77456290090961E48F8548200D1F6832201923E307B240AD135424072847C15209DF3B6394A06D336073DF239C0B45145A7EFA59C24CA5822F66091E1076BB4A00E9E68449283D3A5D93F775EEF0583B17AC192B51612695889F28F0E8A48C5660B3EF1473BF8E26C6F31CE3AE56DAEB3CA6184E460183E67BB6AED3314B355D77C4F37CE9C817620EBCCDC45A6D442290073586106AFA073932A6B214461C32951276E07DCAEE190D7F85D5ADF81DF888678C357D402FF03BE3008F3EA55AAF5ADDC0DCF46C1AF95E60B207367FCDEDB2162198727572EC7B57680AB9675003A611AE991229FC021C52A220FA44948214F33D8D200FB96384A5F24AC45069438462F9F9DE25597E04BE500F231F7FF5BD0BBA84A83A292DF8CC29562B32A9340353C9305867BB1303B7C0602EF8B34150C9794B28A86CDA05064DDE7DE1603299BC000C1C03B7802F8B2115FBD74BA35B9A8835FCBA836CC9BA228F7491C7DC4E9B21F306584E24118C4543A8717A67525EA422BE11AC917883E06E26B234D4568A2EAA5B922E40ED5A898641CFACC686AC3755910DBB76AA4A8B7F6F9509324C6948BAEAE4E8F8F965D20696332945487357ACFBC9C4B1E9C4398FBC5EA02E5C6A96077A8610A009261DCD19F93F3811DA26BCAA85A67003E1A68223DF46CF359F20AD02EF2C2C9E4F632243C4AB8B1A34C53C41C041AA334B183E0B25429872E5A293F2902684F571C362DE01DCDAD05AA5FDCD0412E01A8B7DF2D5C716FB76756DA9555AC1DC16BB61D000A37BA1E9673872405A558EBE97CAB7F9865B0DDFE4E5C526CB02B151A685CE4099AF33E97BEB4229D155BF661DA09A22D6417144B4C5CB956104D795D311FB662DBB46596DA941DBD9BFECECF6ADFCDAAF66581CACF42DF5A6B4AE0804660836DC7F358AD6D360508C83D5D818B4CC8DC34B9224783537E6C8F2C49B9543E4BBD9D367A9B890118472C348555B5B6BC26E4316607DAB5B77041734956A4214B927FAF61F47B14366D44C0B102B555659B8A9ABA05931E8DF4BA61ED3745D55EEA5530ABC404F637D73E52DB6018156CE7CB4278CA4ED93D758B02CE65B66B92E59C548D514539CB8128681E58873533A3174DA8F99935E19EB28DD6766AC4D728F94B5B3B6C5B9D9EF9AD1EEEA83EDD2F201A829263F7842D6CB59C6C87B79D65F8ADD3B9BD2B6F5D5D7C353773B782EA63AA4F7C155277B2BB6ACF79481AF2D6FAD0E8CAD9FF206D2D6C77BCEA9D3F36C925A7BDDFBAC1E372CFB4D9F05AAD5800A12DFC3203DD248379FD94A2A88079A6030FB8315B7EF9AE092703A07A98A39D03F3ED4638FB1717D3BDBCF40CA88F55B81BEF28E91EA106F9D519FBAD969AC15F923C11A27E97731597EDF94F412ABC3575FCD7D95F035B671ADD1DB61C3F63C599BB766B9FFCE6C35C5F16E39F2FFCC594FBDE96F7726F781779D62459F7A87DE5F3BEE25BA97586F6641F475F061EF84AACC3A5BA1D759F96CC0C97EB730EED8B8E3AA69B7754EF793652FEB9BFFD7AAC69D4E7BED62BA5631C5F362E447F7BA4A8A1A58AF705E6251B34943F56D0F154FD9E36C54D5A070D5ED79D5B3C199ADCB98963AEDB1187A99358EFB74455C37FE43006B4BD2C55A84FE7F010EA181E89A66CAE7A22A30CBA28AC4BAC42F419108E17E962A3A27A1C2AF439032DFED7F212C4392F3F81EA229BFCE5492297419E27B66FCC140176897FE7C5765DA3CBC4EF2BF4BBD840B68264517E09AFF9C5116D5765F6CE8352D2274E5979D51E752E90EB958D592AE9CECB7092AC3575F58B710270C85C96B3E238FB08B6D9F257C84050957D504D22E647B22CCB00F27942C5212CB52C69A1F3F2286A378F9FE3F125D0C6528230000 , N'6.1.3-40302')

