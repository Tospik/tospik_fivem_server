local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	-- Poste de police
	{title="Poste de Police", colour=29, id=60, x=438.450073242188, y=-982.322937011719, z=30.6896018981934},
	-- Caserne de pompiers
	{title="Caserne de Pompiers", colour=1, id=60, x=215.786, y=-1642.49, z=29.7138},
	-- Centre médicaux
	{title="Hôpital", colour=0, id=61, x=360.222, y=-582.222, z=28.8212},
	-- Distributeurs de Billets
	{title="Distributeur de Billets", colour=2, id=431, x=89.9733, y=2.18227, z=68.2283},
	{title="Distributeur de Billets", colour=2, id=431, x=-526.065, y=-1221.99, z=18.4549},
	{title="Distributeur de Billets", colour=2, id=431, x=711.389, y=-820.833, z=23.6155},
	{title="Distributeur de Billets", colour=2, id=431, x=-2073.44, y=-317.245, z=13.316},
	{title="Distributeur de Billets", colour=2, id=431, x=-821.17, y=-1083.29, z=11.1324},
	{title="Distributeur de Billets", colour=2, id=431, x=1686.4, y=4816.36, z=42.0092},
    -- Épicerie
    {title="Épicerie", colour=18, id=52, x=28.463, y=-1353.033, z=29.340},
    {title="Épicerie", colour=18, id=52, x=-54.937, y=-1759.108, z=29.005},
    {title="Épicerie", colour=18, id=52, x=375.858, y=320.097, z=103.433},
    {title="Épicerie", colour=18, id=52, x=1143.813, y=-980.601, z=46.205},
    {title="Épicerie", colour=18, id=52, x=1695.284, y=4932.052, z=42.078},
    {title="Épicerie", colour=18, id=52, x=2686.051, y=3281.089, z=55.241},
    {title="Épicerie", colour=18, id=52, x=1967.648, y=3735.871, z=32.221},
    {title="Épicerie", colour=18, id=52, x=-2977.137, y=390.652, z=15.024},
    {title="Épicerie", colour=18, id=52, x=1160.269, y=-333.137, z=68.783},
    {title="Épicerie", colour=18, id=52, x=-1492.784, y=-386.306, z=39.798},
    {title="Épicerie", colour=18, id=52, x=-1229.355, y=-899.230, z=12.263},
    {title="Épicerie", colour=18, id=52, x=-712.091, y=-923.820, z=19.014},
    {title="Épicerie", colour=18, id=52, x=-1816.544, y=782.072, z=137.600},
    {title="Épicerie", colour=18, id=52, x=1729.689, y=6405.970, z=34.453},
    {title="Épicerie", colour=18, id=52, x=2565.705, y=385.228, z=108.463},
    -- Magasins de vêtements
    {title="Magasin de vêtements", colour=9, id=73, x=88.291, y=-1391.929, z=29.200},
    {title="Magasin de vêtements", colour=9, id=73, x=-718.985, y=-158.059, z=36.996},
    {title="Magasin de vêtements", colour=9, id=73, x=-151.204, y=-306.837, z=38.724},
    {title="Magasin de vêtements", colour=9, id=73, x=414.646, y=-807.452, z=29.338},
    {title="Magasin de vêtements", colour=9, id=73, x=-815.193, y=-1083.333, z=11.022},
    {title="Magasin de vêtements", colour=9, id=73, x=-1208.098, y=-782.020, z=17.163},
    {title="Magasin de vêtements", colour=9, id=73, x=-1457.954, y=-229.426, z=49.185},
    {title="Magasin de vêtements", colour=9, id=73, x=-2.777, y=6518.491, z=31.533},
    {title="Magasin de vêtements", colour=9, id=73, x=1681.586, y=4820.133, z=42.046},
    {title="Magasin de vêtements", colour=9, id=73, x=130.216, y=-202.940, z=54.505},
    {title="Magasin de vêtements", colour=9, id=73, x=618.701, y=2740.564, z=41.905},
    {title="Magasin de vêtements", colour=9, id=73, x=1199.169, y=2694.895, z=37.866},
    {title="Magasin de vêtements", colour=9, id=73, x=-3164.172, y=1063.927, z=20.674},
    {title="Magasin de vêtements", colour=9, id=73, x=-1091.373, y=2702.356, z=19.422},
    -- Marchand d'armes
    {title="Marchand d'armes", colour=0, id=110, x=1701.292, y=3750.450, z=34.365},
    {title="Marchand d'armes", colour=0, id=110, x=237.428, y=-43.655, z=69.698},
    {title="Marchand d'armes", colour=0, id=110, x=843.604, y=-1017.784, z=27.546},
    {title="Marchand d'armes", colour=0, id=110, x=-321.524, y=6072.479, z=31.299},
    {title="Marchand d'armes", colour=0, id=110, x=-664.218, y=-950.097, z=21.509},
    {title="Marchand d'armes", colour=0, id=110, x=-1320.983, y=-389.260, z=36.483},
    {title="Marchand d'armes", colour=0, id=110, x=-1109.053, y=2686.300, z=18.775},
    {title="Marchand d'armes", colour=0, id=110, x=2568.379, y=309.629, z=108.461},
    {title="Marchand d'armes", colour=0, id=110, x=-3157.450, y=1079.633, z=20.692},
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.2)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
