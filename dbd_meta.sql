-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2019 a las 12:07:50
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbd_meta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `logo` text NOT NULL,
  `rarity` text NOT NULL,
  `desc` text NOT NULL,
  `lore` text DEFAULT NULL,
  `itemType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `name`, `logo`, `rarity`, `desc`, `lore`, `itemType`) VALUES
(1, 'Chinese Firecracker', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/73/IconEventItem_chineseFirecracker.png/64px-IconEventItem_chineseFirecracker.png?version=fd6c4361819b8be749cb7d8d94cd8ad4', 'Event', 'A row of small explosive devices wrapped in heavy paper casing. Detonates into loud bangs and intense light flashes.\n\n-Can be used as a distraction, as a blinding device or to celebrate.', NULL, 1),
(2, 'Winter Party Starter', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/84/IconEventItem_winterPartyStarter.png/64px-IconEventItem_winterPartyStarter.png?version=23d2a2375941110a3e94a02fa2cd5413', 'Event', 'A small, highly-explosive dinner table decoration. Detonates into loud bangs and intense light flashes.\n\n-Can be used as a distraction, as a blinding device or to celebrate.', NULL, 1),
(3, 'Third Year Party Starter', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/63/IconEventItem_partyPopper.png/64px-IconEventItem_partyPopper.png?version=54b86dd58e0cd37324d0ff86954913fb', 'Event', 'A small, highly-explosive dinner table decoration. Detonates into loud bangs and intense light flashes, and playful confetti.\n\n-Can be used as a distraction, as a blinding device or to celebrate our three years together.', '\"Happy Anniversary! Here\'s to our three years together!\" — The Dead by Daylight Team', 1),
(4, 'Flashlight', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/76/FulliconItems_flashlightItem.png/64px-FulliconItems_flashlightItem.png?version=72dc0850b3bb4c6f8d575581fc2a3599', 'Uncommon', 'A standard Flashlight.\nCan be used to light your way in the darkness.', '\"Most of the battery life was wastefully used by the previous owner.\"', 2),
(5, 'Sport Flashlight', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/03/FulliconItems_sportFlashlight.png/64px-FulliconItems_sportFlashlight.png?version=c02829fb16502fef9e2cf8a65c814617', 'Rare', 'A very portable Flashlight with a good grip. Its efficient technology produces a powerful light while consuming less power.\n\n-Slightly decreases the Flashlight\'s battery consumption.\n\n-Slightly increases the Flashlight\'s accuracy.', NULL, 2),
(6, 'Utility Flashlight', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/2f/FulliconItems_utilityFlashlight.png/64px-FulliconItems_utilityFlashlight.png?version=c61502ded4674cbd08147d6f7b1f5e9f', 'Very Rare', 'A sturdy but heavy Flashlight that packs a lot of power.\r\nSlightly reduces accuracy.\r\n\r\n-Moderately increases the Flashlight Beam\'s visual brightness.\r\n\r\n-Moderately increases the Flashlight\'s blindness duration.', NULL, 2),
(7, 'Will O\' Wisp', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/37/IconEventItem_willOWisp.png/64px-IconEventItem_willOWisp.png?version=1315719bf5f456dfba2890351d77a298', 'Event', 'A Flashlight equipped with a special lens cover that adds an orange tint and a little Ghost to the beam.\r\n\r\n-Considerably increases friendly Ghosts in your life.', '\"Happy Trick or Treating!\"', 2),
(8, 'Broken Key', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/29/FulliconItems_brokenKey.png/64px-FulliconItems_brokenKey.png?version=e624ed0d9bd1713068b834d9e6f559e1', 'Rare', 'The bow and shank of a key, vibrating with power. The Broken Key\'s power cannot be triggered by itself. Various objects can be attached to its jump ring, which channels the Broken Key\'s power into various effects.\r\n\r\n-Requires Add-ons for any abilities.', NULL, 4),
(9, 'Dull Key', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/af/FulliconItems_dullKey.png/64px-FulliconItems_dullKey.png?version=91ffbdd00daa7322e5e36380ed2a88f9', 'Very Rare', 'A bent and dull Key that once held great power. The Dull Key\'s power cannot be triggered by itself. Various objects can be attached to its jump ring, which channels the Dull Key\'s remaining power into various effects.\r\n\r\n-Can be consumed to open the Hatch.', NULL, 4),
(10, 'Skeleton Key', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/5a/FulliconItems_skeletonKey.png/64px-FulliconItems_skeletonKey.png?version=cb74733eebf4285e427f39e12b9150c7', 'Ultra Rare', 'A tarnished and crooked Key, vibrating with ominous power. The Skeleton Key\'s power cannot be triggered by itself. Various objects can be attached to its jump ring, which channels the Skeleton Key\'s power into various effects.\n\n-Can be consumed to open the Hatch.', NULL, 4),
(11, 'Map', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/26/FulliconItems_mapItem.png/64px-FulliconItems_mapItem.png?version=972e84364da3bd23ddd6b2b459435052', 'Rare', 'An old piece of parchment made out of a skin-like material. Is rolled and sealed with an uncoloured leather string. Holding and channelling the Map unlocks great potential in one\'s Aura-reading ability which slowly burns the Map. Generators\' Auras which you have already encountered are revealed to you for as long as the Map has charges left.\n\n-Starts with 1 Generator IconHelpLoading generators.png tracked.\n\n-Unlocks ability to track Generators within a range of 8 metres.', NULL, 5),
(12, 'Rainbow Map', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/e3/FulliconItems_rainbowMap.png/64px-FulliconItems_rainbowMap.png?version=3fc206e201e43724011d0ded8ab9ab8e', 'Ultra Rare', 'A piece of parchment made out of oddly fresh skin. Blood on its edge has yet to dry. It is rolled and sealed with multiple coloured ropes and cords. Holding and channelling the Map unlocks a great potential in one\'s Aura-reading ability which slowly burns up the Map. Objects with Auras which you have already encountered are revealed to you for as long as the Map has charges left.\n\n-Starts with 3 Objects tracked.\n\n-Unlocks the ability to track Generators within a range of 8 metres.\n\n-Unlocks the ability to track Hooks within a range of 8 metres.\n\n-Unlocks the ability to track Exit Gates within a range of 8 metres.\n\n-Unlocks the ability to track the Hatch within a range of 8 metres.', '\"It disheartens me. All this unspeakable knowledge and gruelling effort and yet nothing tangible, nothing usable to get out of this nightmare.\" — Vigo\'s Journal', 5),
(13, 'Camping Aid Kit', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/62/FulliconItems_campingAidKit.png/64px-FulliconItems_campingAidKit.png?version=a1a90e1ec660ff39c914c7ca25bde5b1', 'Common', 'A rudimentary Aid Kit which can save lives in emergencies, even if it\'s lacking some of its supplies.\n\n-Moderately increases the speed at which you heal other Survivors.\n\n-Unlocks the Self-Healing action.', '\"Barely has enough material for a decent patch-up.\"', 6),
(14, 'First Aid Kit', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/97/FulliconItems_firstAidKit.png/64px-FulliconItems_firstAidKit.png?version=8382883be4918afb34d9fcf275183263', 'Uncommon', 'A standard First Aid Kit with all the necessary equipment for treating common to more serious injuries.\r\n\r\n-Considerably increases the speed at which you heal other Survivors.\r\n\r\n-Unlocks the Self-Healing action.', NULL, 6),
(15, 'Emergency Med-Kit', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/c9/FulliconItems_emergencyMed-Kit.png/64px-FulliconItems_emergencyMed-Kit.png?version=17019b16ae8b85e038b4c1ecfe65a77a', 'Rare', 'A sturdy and well organized Med-Kit equipped with top condition emergency supplies.\r\n\r\n-Tremendously increases the speed at which you heal other Survivors.\r\n\r\n-Moderately decreases the Healing Charge consumption.\r\n\r\n-Unlocks the Self-Healing action.', '\"There is a cure for almost everything...but not for this.\"', 6),
(16, 'Ranger Med-Kit', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/ea/FulliconItems_rangerMed-Kit.png/64px-FulliconItems_rangerMed-Kit.png?version=2be5dce8956d5b73fadd02e5e9663eb4', 'Very Rare', 'A large metal box containing medical supplies aimed at emergency rescues in hard to reach, often isolated locations.\r\n\r\n-Considerably increases the speed at which you heal others.\r\n\r\n-Moderately increases Skill Check success zones.\r\n\r\n-Moderately increases Skill Check bonus zones.\r\n\r\n-Unlocks the Self-Healing action.', '\"A small engraved label can be found glued to the back panel: VK.ID-3994723.\"', 6),
(17, 'All Hallows\' Eve Lunchbox', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/4/45/IconEventItem_allHallowsEveLunchbox.png/64px-IconEventItem_allHallowsEveLunchbox.png?version=4d7f7d719e19ae97a57a239ec9503029', 'Event', 'A plastic lunchbox with phosphorescent Halloween Stickers that has been packed with first-aid equipment.\r\n\r\n-Considerably increases the speed at which you heal other Survivors.\r\n\r\n-Unlocks the Self-Healing action.\r\n\r\n-Makes you considerably more visible.', '\"Safety first! Make sure you can be seen when trick or treating.\"', 6),
(18, 'Worn-Out Tools', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/92/FulliconItems_worn-outTools.png/64px-FulliconItems_worn-outTools.png?version=c8f7af14ae84f183c3417987fe4e684a', 'Common', 'A metal box containing out of condition tools that could break at any moment. Even without training, can be used to repair or break various mechanical components.\r\n\r\n-Moderately increases Repair speed.\r\n\r\n-Slightly decreases Skill Check success zones.\r\n\r\n-Unlocks the Sabotage action.\r\n', '\"You call these tools? ... Really?\"', 3),
(19, 'Toolbox', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/ce/FulliconItems_toolboxItem.png/64px-FulliconItems_toolboxItem.png?version=e412d6277f537012db54dce45a90bd5f', 'Uncommon', 'A metal box containing a set of basic tools. Even without training, can be used to repair or break various mechanical components.\r\n\r\n-Moderately increases Repair speed.\r\n\r\n-Unlocks the Sabotage action.', '\"It is unclear as to where these tools come from. Were they brought in by one of us or did they belong to one of the monsters?\"', 3),
(20, 'Mechanic\'s Toolbox', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/22/FulliconItems_mechanicsToolbox.png/64px-FulliconItems_mechanicsToolbox.png?version=ca7afb1d6121b3b314be7cbe60020018', 'Rare', 'A metal box with specialised mechanics tools. Even without training, can be used to repair or break various mechanical components.\r\n\r\n-Considerably increases Repair speed.\r\n\r\n-Moderately reduces Sabotage speed.\r\n\r\n-Unlocks the Sabotage action.', NULL, 3),
(21, 'Commodious Toolbox', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/22/FulliconItems_mechanicsToolbox.png/64px-FulliconItems_mechanicsToolbox.png?version=ca7afb1d6121b3b314be7cbe60020018', 'Rare', 'A large metal box containing basic tool and extra mechanical parts. Even without training, can be used to repair or break various mechanical components.\r\n\r\n-Moderately increases Repair speed.\r\n\r\n-Unlocks the Sabotage action.', NULL, 3),
(22, 'Engineer\'s Toolbox', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/7d/FulliconItems_engineersToolbox.png/64px-FulliconItems_engineersToolbox.png?version=f7b54f96064a527dd5331ee1324b0eee', 'Very Rare', 'A metal box with highly specialised tools meant for engineering. Most of the tools can be used by neophytes to make quick repairs or break various mechanical components.\r\n\r\n-Tremendously increases Repair speed.', '\"I\'ve created tools beyond compare and stood paralysed as they were stolen from me. These are but a poor replica, spat out by The Fog.\" — Vigo\'s Journal', 3),
(23, 'Alex\'s Toolbox', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/58/FulliconItems_alexsToolbox.png/64px-FulliconItems_alexsToolbox.png?version=a4de9e73f71b7c31a42eef4c8eeb5586', 'Very Rare', 'A metal box containing mainly saws and vice grips of varying sizes but also other tools. Even though the content of this Toolbox is clearly aimed at destructive deeds, it can be used to repair various mechanical components as well.\r\n\r\n-Slightly increases Repair speed.\r\n\r\n-Moderately increases Sabotage speed.', '\"Most of the tools are identified as \'owned by Alex\'.\"', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items_addons`
--

CREATE TABLE `items_addons` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `logo` text NOT NULL,
  `rarity` text NOT NULL,
  `desc` text NOT NULL,
  `itemType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `items_addons`
--

INSERT INTO `items_addons` (`id`, `name`, `logo`, `rarity`, `desc`, `itemType`) VALUES
(1, 'Wide Lens', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/9b/FulliconAddon_wideLens.png/64px-FulliconAddon_wideLens.png?version=f1e184dfa077279c6816f6ddbcf3efdd', 'Common', 'A thing wide lens in perfect condition. \r\nDesigned to spread the Flashlight beam at the cost of reducing its range fo effectiveness.\r\n\r\n-Moderately widens the Flashlight beam.\r\n\r\n-Slightly decreases the range of the Flashlight beam.', 2),
(2, 'Power Bulb	', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/b/bc/FulliconAddon_powerBulb.png/64px-FulliconAddon_powerBulb.png?version=ce8062f1f5e7f247b0be5f2843d0653b', 'Common', 'A tiny Flashlight bulb that packs more wattage for a brighter, more powerful light beam.\r\n\r\n-Slightly tightens the radius of the Flashlight beam.\r\n\r\n-Slightly increases the beam\'s visual brightness.\r\n\r\n-Slightly increases the Blindness duration.', 2),
(3, 'Leather Grip', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/0c/FulliconAddon_leatherGrip.png/64px-FulliconAddon_leatherGrip.png?version=49f41cf0c979ea1705b4c812cdd197b4', 'Common', 'A leather strip wrapped around the Flashlight for more grip.\r\n\r\n-Slightly increases the Flashlight\'s accuracy.', 2),
(4, 'Battery', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/22/FulliconAddon_battery.png/64px-FulliconAddon_battery.png?version=1dd446e51155b78f6d4d51ee57ebce66', 'Common', 'A standard battery of unknown brand.\r\n\r\n-Adds 2 seconds of use to a standard Flashlight.', 2),
(5, 'Tir Optic', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/57/FulliconAddon_tirOptic.png/64px-FulliconAddon_tirOptic.png?version=dd4df970e479a82cbb16640e173924d5', 'Uncommon', 'A lens and reflector combo which can magnify a Flashlight\'s beam.\r\n\r\n-Moderately increases the beam\'s visual brightness.\r\n\r\n-Moderately increases the Blindness duration.', 2),
(6, 'Rubber Grip', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/75/FulliconAddon_rubberGrip.png/64px-FulliconAddon_rubberGrip.png?version=aa9c1432acbdf0db1c82eacae47cd6ca', 'Uncommon', 'A rubber grip specifically fitting Flashlights for more grip.\r\n\r\n-Moderately increases the Flashlight\'s accuracy.', 2),
(7, 'Low Amp Filament', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/1c/FulliconAddon_lowAmpFilament.png/64px-FulliconAddon_lowAmpFilament.png?version=e551910e697b901fecf6049d7aedb79d', 'Uncommon', 'A filament bulb designed to extend a Flashlight battery\'s life.\r\n\r\n-Moderately decreases Flashlight battery consumption.', 2),
(8, 'Heavy Duty Battery', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/ad/FulliconAddon_heavyDutyBattery.png/64px-FulliconAddon_heavyDutyBattery.png?version=731a88a1111acab4c8412907884b9d64', 'Uncommon', 'A battery marked as \"industrial strength\".\r\n\r\n-Adds 4 seconds of use to a standard Flashlight.', 2),
(9, 'Focus Lens	', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/a3/FulliconAddon_focusLens.png/64px-FulliconAddon_focusLens.png?version=6ffd402d2ac0aa5fce5a2917b7c62bb1', 'Uncommon', 'A thick glass lens that focuses the Flashlight beam to increase its intensity.\r\n\r\n-Slightly increases the range of the Flashlight beam.\r\n\r\n-Slightly tightens the radius of the Flashlight beam.\r\n\r\n-Slightly increases the beam\'s visual brightness.\r\n\r\n-Slightly increases the Blindness duration.', 2),
(10, 'Long Life Battery', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/a3/FulliconAddon_longLifeBattery.png/64px-FulliconAddon_longLifeBattery.png?version=8e000cfa3a14837bb3df7e4601a9435f', 'Rare', 'A recent model of battery that lasts longer.\r\n\r\n-Adds 6 seconds of use to a standard Flashlight.', 2),
(11, 'Intense Halogen', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/09/FulliconAddon_intenseHalogen.png/64px-FulliconAddon_intenseHalogen.png?version=78a3fa8887c9478fe641947923f5e2bb', 'Rare', 'A chemical bulb that generates an intensely clear light.\r\n\r\n-Considerably increases the beam\'s visual brightness.\r\n\r\n-Considerably increases the Blindness duration.', 2),
(12, 'High-End Sapphire Lens', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/fe/FulliconAddon_high-EndSapphireLens.png/64px-FulliconAddon_high-EndSapphireLens.png?version=dba0ff53d7a24191d9ea6851a244621d', 'Very Rare', 'A wide lens made of unscratchable sapphire that optimises the power and range of the light beam.\r\n\r\n-Moderately widens the Flashlight beam.\r\n\r\n-Slightly increases the Flashlight beam.\r\n\r\n-Moderately increases the beam\'s visual brightness.\r\n\r\n-Moderately increases the Blindness duration.', 2),
(13, 'Odd Bulb', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/83/FulliconAddon_oddBulb.png/64px-FulliconAddon_oddBulb.png?version=f7c6c04f59f75fb92d65b3b16303e6a8', 'Ultra Rare\r\n', 'A heavy and completely opaque bulb of unknown origin which emits a faint light even when turned off.\r\n\r\n-Tremendously increases the beam\'s visual brightness.\r\n\r\n-Tremendously increases increases the Blindness duration.\r\n\r\n-Slightly increases the Flashlight battery consumption.', 2),
(14, 'Prayer Rope	\r\n', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/5e/FulliconAddon_prayerRope.png/64px-FulliconAddon_prayerRope.png?version=6b6b62db82ffacffa881d5f2ae277d55', 'Common', 'Tightly knitted rope used in praying rituals. Can be attached to the Key.\r\n\r\n-Adds 10 seconds of use to the Key.', 4),
(19, 'Scratched Pearl', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/ce/FulliconAddon_scratchedPearl.png/64px-FulliconAddon_scratchedPearl.png?version=3b0eef8dd86b2225b6a6dada548ae4d3', 'Uncommon', 'A porous and scratched white pearl. A minuscule jump ring allows the pearl to be attached to the Key.\r\n\r\n-Moderately increases the range of the Key\'s Aura-reading ability.', 4),
(20, 'Prayer Beads', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/91/FulliconAddon_prayerBeads.png/64px-FulliconAddon_prayerBeads.png?version=5fe26e574ed42e70708330c52b50740d', 'Uncommon', 'A chain of matte beads of various sizes used in praying ritual. Can be attached to the Key.\r\n\r\n-Adds 15 seconds of use to the Key.', 4),
(23, 'Eroded Token', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/31/FulliconAddon_erodedToken.png/64px-FulliconAddon_erodedToken.png?version=88f72c50c9b37ad1ec222e33fcb62812', 'Uncommon', 'A heavily worn out token made of brass. If an inscription or drawing was once engraved in it, it has today completely disappeared. Can be attached to the Key using its jump ring to channel the Key\'s Aura-reading ability.\r\n\r\n-Reveals Survivors\' Auras when within 24 metres of range.\r\n', 4),
(24, 'Gold Token', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/15/FulliconAddon_goldToken.png/64px-FulliconAddon_goldToken.png?version=0d03ea83c6f75c9ba5691cb6258deace', 'Rare', 'A gold token with a dull appearance. Both faces are smooth and void of any inscriptions. Can be attached to the Key using its jump ring to channel the Key\'s Aura-reading ability.\r\n\r\n-Reveals Survivors\' Auras when within 48 metres of range.', 4),
(25, 'Weaved Ring', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/1d/FulliconAddon_weavedRing.png/64px-FulliconAddon_weavedRing.png?version=545a07a24a6d245847a4e46514f32e17', 'Very Rare', 'A mundane key ring in appearance with an unusual bluish dark sheen. The ring binds the Key to the user, preventing its loss even in the darkest of times.\r\n\r\n-Do not lose the Key on death, lose this Add-on instead.', 4),
(26, 'Milky Glass', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/e5/FulliconAddon_milkyGlass.png/64px-FulliconAddon_milkyGlass.png?version=851fc1d86c9828a8395d709feb6068f9', 'Very Rare', 'This opaque piece of glass emits a dull vibrating noise. When the Skeleton or Dull Key is used to unlock a Black Lock, the glass token protects the Key from breaking, channelling the Black Fog\'s energy into the glass.\r\n-Do not lose the Key when unlocking a Hatch, lose this Add-on instead.', 4),
(27, 'Blood Amber', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/6a/FulliconAddon_bloodAmber.png/64px-FulliconAddon_bloodAmber.png?version=c64f4386c31b78884714f28561c3fe07', 'Very Rare', 'A blood-red amber striped with black veins. The amber is warm to the touch. Can be attached to the Key using its jump ring to channel the Key\'s Aura-reading ability.\r\n\r\n-Reveals the Killer\'s Aura when within 32 metres of range at the great expense of the Key\'s energy.', 4),
(28, 'Unique Wedding Ring', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/c4/FulliconAddon_uniqueWeddingRing.png/64px-FulliconAddon_uniqueWeddingRing.png?version=666bd7b1b77a4d9d246f3f3ae787efc4', 'Ultra Rare', 'An engraved wedding ring that emerged from \r\nThe Fog and resonates with an indescribable and incomprehensible energy.\r\n\r\n-Reveals the Obsession\'s Aura.\r\n\r\n-Decreases your chances to be The Killer\'s Obsession.', 4),
(29, 'Map Addendum	', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/8c/FulliconAddon_mapAddendum.png/64px-FulliconAddon_mapAddendum.png?version=4cd15fa04238f8ee41f22cbd219be2f0', 'Common', 'A fragmented piece of a thick fibrous material. A partial and faded map is drawn on it which by itself is useless.\r\n\r\n-Adds a 5 second charge to any Map.', 5),
(30, 'Yellow Wire', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/71/FulliconAddon_yellowWire.png/64px-FulliconAddon_yellowWire.png?version=3662403a92ca5eadedf1a17255c2274b', 'Uncommon', 'A small electrical wire. Both ends are heavily damaged like it has been forcefully torn out of its intended location. Can be tied around a map to enhance its Aura-reading ability.\r\n\r\n-Unlocks the ability to track Exit Gates.', 5),
(31, 'Unusual Stamp', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/36/FulliconAddon_unusualStamp.png/64px-FulliconAddon_unusualStamp.png?version=9d2fe533de6c1cfcae42553f1011117f', 'Uncommon', 'A wooden stamp with a cross-hatched rubber pad used to mark documents. It is unclear as to how or by whom this stamp was originally used. Can be used with a map.\r\n\r\n-Moderately increases the range of the map tracking ability.', 5),
(32, 'Retardant Jelly', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/dd/FulliconAddon_retardantJelly.png/64px-FulliconAddon_retardantJelly.png?version=b32c0b430fd51a2e97d641190f270a7b', 'Uncommon', 'A slimy, translucent substance with a ghastly lavender shade. This jelly from unknown origin is highly resistant to heat.\r\n\r\n-Moderately slows down the burning rate of the map.\r\n', 5),
(33, 'Red Twine', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/91/FulliconAddon_redTwine.png/64px-FulliconAddon_redTwine.png?version=ecb1194bb1c25ddaba81f13e68262632', 'Uncommon', 'A bristly and rough piece of twine of a deep red colour. Can be tied around a map to enhance its Aura-reading ability.\r\n\r\n-Unlocks the ability to track Killer Belongings.', 5),
(34, 'Glass Bead', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/1a/FulliconAddon_glassBead.png/64px-FulliconAddon_glassBead.png?version=0c0c84c0b54008215cd51bd71fad2418', 'Uncommon', 'A strange bead circled with gold that can be used to magnify the map and mark a specific position. The bead emits an energy which can be felt and seen by Survivors.\r\n\r\n-Unlocks the Marker Ability on secondary action.\r\n\r\n-Creating a marker that can be seen by all the Survivors.', 5),
(35, 'Odd Stamp', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/ed/FulliconAddon_oddStamp.png/64px-FulliconAddon_oddStamp.png?version=feaa4c41e9e9fb1b97f618dee7fca6c3', 'Rare', 'A stamp carved out of sturdy blonde wood. The text found at the base is incomprehensible: \"kw\'zvre\'od\". Can be used with a map.\r\n\r\n-Considerably increases the range of the map tracking ability.', 5),
(36, 'Black Silk Cord', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/c1/FulliconAddon_blackSilkCord.png/64px-FulliconAddon_blackSilkCord.png?version=2e58f0cd8fe62898dd2877559b330e71', 'Rare', 'A smooth black cord with a soft appearance. Can be tied around a map to enhance its Aura-reading ability.\r\n\r\n-Unlocks the ability to track the Black Lock.', 5),
(37, 'Crystal Bead', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/0b/FulliconAddon_crystalBead.png/64px-FulliconAddon_crystalBead.png?version=891e68c4fb9bc29f9c9195236ed75b0b', 'Very Rare', 'An intricate set of lenses wrapped up in an astonishingly complex apparatus. The gears controlling the lenses\' focus move by themselves as to focus on something invisible to humans.\r\n\r\n-Every Survivor sees the Aura generated by the map when the owner activates it.', 5),
(38, 'Rubber Gloves', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/a6/FulliconAddon_rubberGloves.png/64px-FulliconAddon_rubberGloves.png?version=38a8bb7b9ad9ff20c5675619e7ad74a3', 'Common', 'Disposable medical gloves to avoid cross-contamination.\r\n\r\n-Slightly decreases the Healing Skill Check difficulty.', 6),
(39, 'Butterfly Tape', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/f9/FulliconAddon_butterflyTape.png/64px-FulliconAddon_butterflyTape.png?version=c2d5277de6f11e1bb7ab8a2a90488123', 'Common', 'Medical quality tape used to close small wounds.\r\n\r\n-Slightly increases the Healing speed.', 6),
(40, 'Bandages', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/65/FulliconAddon_bandages.png/64px-FulliconAddon_bandages.png?version=a9828354f23c256eee75731b602ae93f', 'Common', 'A pack of bandages usually found in First Aid Kits.\r\n\r\n-Adds 8 charges to the Med-Kit.', 6),
(41, 'Sponge', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/fe/FulliconAddon_sponge.png/64px-FulliconAddon_sponge.png?version=c92c6639874c3b74a4786bd1fda7d0c9', 'Uncommon', 'A mundane sponge used to soak up extra blood, providing easier access to wounds.\r\n\r\n-Moderately decreases the Healing Skill Check difficulty.', 6),
(42, 'Self Adherent Wrap', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/cf/FulliconAddon_selfAdherentWrap.png/64px-FulliconAddon_selfAdherentWrap.png?version=bfb4561def15ce4c440cf524fe8d95b2', 'Uncommon', 'A pack of bandages that stick to themselves without the need of clips for a faster patch-up that requires less readjustments.\r\n\r\n-Adds 8 charges to the Med-Kit.\r\n\r\n-Slightly increases the Healing speed.', 6),
(45, 'Needle & Thread', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/99/FulliconAddon_needle%26Thread.png/64px-FulliconAddon_needle%26Thread.png?version=d65db6be53e3dec03d42fbef495e9417', 'Uncommon', 'Not exactly a medical device, however it can be used to quickly and painfully close up a wound.\r\n\r\n-Slightly increases the chance to trigger a Skill Check.\r\n\r\n-Considerably reduces the Skill Check success zones.\r\n\r\n-Moderately increases the Healing speed.', 6),
(46, 'Medical Scissors', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/a9/FulliconAddon_medicalScissors.png/64px-FulliconAddon_medicalScissors.png?version=91cb681c8ab64f3f93cbd81b6c510584', 'Uncommon', 'Scissors designed to easily cut through textiles.\r\n\r\n-Moderately increases the Healing speed.', 6),
(47, 'Gauze Roll', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/b/b1/FulliconAddon_gauzeRoll.png/64px-FulliconAddon_gauzeRoll.png?version=c3e3bc1e243568c0d5065ed3a0003f2e', 'Uncommon', 'A sterile gauze used for a variety of wounds. Part of a total wound care system.\r\n\r\n-Adds 12 charges to the Med-Kit.', 6),
(48, 'Surgical Suture', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/65/FulliconAddon_surgicalSuture.png/64px-FulliconAddon_surgicalSuture.png?version=4a35544ce95fe500494d7c0655993fa5', 'Rare', 'A medical device used to close and hold body tissue. Even though it\'s very effective, the surgical suture is challenging to use.\r\n\r\n-Moderately increases the chance to trigger a Skill Check.\r\n\r\n-Moderately reduces the Skill Check success zones.\r\n\r\n-Moderately increases the Healing speed.', 6),
(49, 'Gel Dressings', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/4/4f/FulliconAddon_gelDressings.png/64px-FulliconAddon_gelDressings.png?version=63d8e7c6427b212422dc5ee92d4052f4', 'Rare', 'A pack of gel forming pads used to patch up heavily exuding wounds.\r\n\r\n-Adds 16 charges to the Med-Kit.', 6),
(50, 'Abdominal Dressing', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/10/FulliconAddon_abdominalDressing.png/64px-FulliconAddon_abdominalDressing.png?version=3f5053b2b556f155cafdf892162f8b74', 'Rare', 'A highly absorbent pad that prevents bodily fluid leakage when applied to large abdominal wounds.\r\n\r\n-Considerably increases the Healing speed.\r\n\r\n-Reduces charges by 25 %.', 6),
(55, 'Styptic Agent', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/89/FulliconAddon_stypticAgent.png/64px-FulliconAddon_stypticAgent.png?version=43a9a97489e54ccbef8f9e2fb8e60e5b', 'Very Rare', 'A white powder with coagulant properties. Apply the agent to a wound to stop it from haemorrhaging.\r\n\r\n-Instantly heal one Health State on secondary action.\r\n\r\n-Reduces charges by 25 %.\r\n\r\n-Depletes the Med-Kit on use.', 6),
(56, 'Anti-Haemorrhagic Syringe', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/96/FulliconAddon_anti-haemorrhagicSyringe.png/64px-FulliconAddon_anti-haemorrhagicSyringe.png?version=258c1db7e1ab5a8a731f62dc1b80f876', 'Ultra Rare\r\n', 'An anti-haemorrhagic substance that stops the bleeding in a matter of seconds.\r\n\r\n-Instantly and completely heal on secondary action.\r\n\r\n-Reduces charges by 50 %.\r\n\r\n-Depletes the Med-Kit on use.', 6),
(57, 'Common', 'ttps://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/0d/FulliconAddon_springClamp.png/64px-FulliconAddon_springClamp.png?version=484f43ea6427f3893ea82efe2a9c4bc7', 'Spring Clamph', 'Useful tool to clamp hoses or hold wires in place and prevent damage or injury.\r\n\r\n-Slightly increases repair Skill Check success zones.', 3),
(58, 'Scraps', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/78/FulliconAddon_scraps.png/64px-FulliconAddon_scraps.png?version=256902d3d2066f54f64af067a551d9ef', 'Common', 'Springs, screws and gears. Mostly unusable junk.\r\n\r\n-Adds 15 charges to the Toolbox.', 3),
(59, 'Clean Rag', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/4/4e/FulliconAddon_cleanRag.png/64px-FulliconAddon_cleanRag.png?version=a3d3f6a0280645844accac6357fb0a02', 'Common', 'A mundane rag. Suspiciously clean.\r\n\r\n-Slightly increases the Toolbox\'s repair speed.', 3),
(60, 'Wire Spool', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/33/FulliconAddon_wireSpool.png/64px-FulliconAddon_wireSpool.png?version=315d7a409708fe38333fec59ae94a51b', 'Uncommon', 'A portable but heavy spool of copper wire.\r\n\r\n-Adds 30 charges to the Toolbox.', 3),
(61, 'Socket Swivels', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/d3/FulliconAddon_socketSwivels.png/64px-FulliconAddon_socketSwivels.png?version=e720a676b80b5a5a2bf583e98bfa114f', 'Uncommon', 'Swivels provide bend and flexibility for bolts that are out of reach, deep within mechanical devices.\r\n\r\n-Moderately increases the Toolbox repair speed.', 3),
(62, 'Protective Gloves', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/c7/FulliconAddon_protectiveGloves.png/64px-FulliconAddon_protectiveGloves.png?version=4b9544ff24fe6f7408e66f2018994295', 'Uncommon', 'Thick gloves, which reduce menial dexterity but protect hands from injury.\r\n\r\n-Slightly increases the chances to trigger a sabotage Skill Check.\r\n\r\n-Slightly increases sabotage Skill Check success zones.\r\n\r\n-Considerably reduces the sabotage Skill Check failed penalty.', 3),
(63, 'Instructions', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/cd/FulliconAddon_instructions.png/64px-FulliconAddon_instructions.png?version=48f8d9013b88b3c6a6c9bf8d0650fda3', 'Uncommon', 'Someone quickly painted what seems to be repair instructions on this piece of bark.\r\n\r\n-Moderately increases the Toolbox\'s repair efficiency.', 3),
(64, 'Grip Wrench	', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/cd/FulliconAddon_instructions.png/64px-FulliconAddon_instructions.png?version=48f8d9013b88b3c6a6c9bf8d0650fda3', 'Uncommon', 'An adjustable wrench with a tough grip. Essential in any Toolbox.\r\n\r\n-Moderately increases repair Skill Check success zones.', 3),
(65, 'Cutting Wire', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/51/FulliconAddon_cuttingWire.png/64px-FulliconAddon_cuttingWire.png?version=17609e0531b43f1a0e0495959388df60', 'Uncommon', 'A rudimentary cutting tool made from a jagged metal wire and two wooden handles.\r\n\r\n-Slightly increases the Toolbox\'s sabotage speed.', 3),
(66, 'Hacksaw', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/d1/FulliconAddon_hacksaw.png/64px-FulliconAddon_hacksaw.png?version=71b90ecec3437f512a5176dd40a2dcda', 'Rare', 'A small hand saw mounted with a metal cutting blade.\r\n\r\n-Moderately increases the Toolbox\'s sabotage speed.', 3),
(67, 'Brand New Part', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/d9/FulliconAddon_brandNewPart.png/64px-FulliconAddon_brandNewPart.png?version=4fbad2eb72135bcedc44f7acb8de524e', 'Ultra Rare\r\n', 'This intricate mechanical part feels oddly out of place. It is clean and shiny as if straight out of the factory.\r\n\r\n-Toolbox Repair action is replaced with Install Brand New Part.\r\n\r\n-Installing the Brand New Part will complete 15 % of a Generator over 5 seconds.\r\n\r\n-During the install, you will be faced with 2 difficult Skill Checks.\r\n\r\n-Hitting each Skill Check will result in 5 % progression each for a maximum of 25 % added progression.\r\n\r\n-This Add-on is consumed on use.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items_types`
--

CREATE TABLE `items_types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `items_types`
--

INSERT INTO `items_types` (`id`, `name`, `desc`) VALUES
(1, 'Firecrackers', 'The Firecrackers are Items that were added during Events and could only be obtained for a limited amount of time. They usually get temporarily re-enabled during their respective Events as they are recurring. They can be used to blind, deafen and stun a Killer, if they explode near enough to them. They are single-use only.'),
(2, 'Flashlights', 'The Flashlight is an Item that is used to blind the Killer. If they are carrying a Survivor on their shoulder, getting blinded will make them drop that Survivor and be stunned for a few seconds.\r\nThe Flashlight is also very effective against three Killers, The Hag, The Wraith, and The Nurse. Shining a Flashlight upon a Wraith when he is cloaked or in the act of uncloaking will trigger the light burn effect, stunning him for a few seconds and forcing an instant uncloak. Shining a Flashlight upon one of the Hag\'s Phantasm Traps will highlight and destroy it. Shining a Flashlight upon the Nurse while she is charging up a blink will trigger the light burn effect, causing her to go straight into the fatigue from the blink.'),
(3, 'Toolboxes', 'The Toolbox is an Item that can be used to repair Generators more quickly or sabotage hooks. Different Toolboxes have different uses and not all of them are good for both uses. Add-ons can be equipped to enhance their speed and durability.'),
(4, 'Keys', 'The Key is an Item that can be used to open the Hatch when it spawns. It can also be used with Add-ons to enhance its power and show the user different Auras, such as those of other Survivors in their vicinity or that of the Killer. The Broken Key FulliconItems brokenKey.png cannot be used to open to Hatch and is of no use without Add-ons.'),
(5, 'Maps', 'The Map is an Item that is used to track and mark props in the World. The standard map can only track Generators, but can track different props as well with the use of Add-ons that enhance its power. You can even make the tracked Auras visible to other Survivors and create markers that look like a pillar of bright light.\r\n'),
(6, 'Med-Kits', 'The Med-Kit is an Item that is used to heal yourself and other Survivors. Other Survivors can also be healed without the use of a Med-Kit, but it takes considerably longer.\r\nWithout the use of Self-Care, a Survivor cannot heal themselves without one. Different Add-ons can be equipped that enhance its healing speed or durability.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `killers`
--

CREATE TABLE `killers` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `photo` text NOT NULL,
  `powerName` text NOT NULL,
  `powerDesc` text NOT NULL,
  `powerLogo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `killers`
--

INSERT INTO `killers` (`id`, `name`, `photo`, `powerName`, `powerDesc`, `powerLogo`) VALUES
(1, 'The Trapper', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/7b/TR_charSelect_portrait.png/150px-TR_charSelect_portrait.png?version=562c16b576920c2af371a1f8056e8f91', 'Bear Trap', 'The Bear Trap is the secondary weapon of the Trapper: Bear traps are found lying around the map. They can be picked up and set down mostly anywhere. Traps are not armed until picked up and placed. The Trapper starts the game with a single trap in his hands, and can only carry one at a time unless using the Trapper Bag or Stitched Bag Add-ons.\r\n\r\nAfter pressing alternate attack, the Trapper bends down and sets the trap, looking directly downwards allowing nearby survivors to run around him unseen. If a survivor walks over an armed trap however, the trap will spring and catch one of their legs, where upon they will be trapped in place until either they manage to free themselves, a fellow survivor comes to free them, or the Trapper returns to hoist them onto his shoulder. A trapped survivor will make a lot of noise, alerting the Trapper, and be visible to the Trapper through walls. The traps also possess an aura that can be seen by the trapper at all times, and from all ranges. This is useful for identifying which traps have not yet been set as well as traps that have been disarmed. Should the Trapper walk within the hitbox of one of his traps, he will reach down to free himself, but the trap will remain in the set position and no effect is imbued upon the Killer.\r\n\r\nIt is very common for experienced Trappers to put Bear Traps in hard-to-identify locations such as tall grass, around a corner, or on one side of a window in order for survivors to trigger them without being previously alerted to their position.\r\n<ul>\r\n<li>Immobilises and injures trapped Survivors.\r\n</li>\r\n<li>Starts match with 1 Bear Trap.\r\n5 Bear Traps are available randomly placed throughout the Map.\r\n</li>\r\n<li>Sabotaged Bear Traps respawn after 3 minutes.</li>\r\n</ul>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/20/FulliconPowers_trap.png/130px-FulliconPowers_trap.png?version=04e8dead23613e13c60698c5fbfb7019'),
(2, 'The Wraith', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/db/WR_charSelect_portrait.png/150px-WR_charSelect_portrait.png?version=4123cae8b947d0574957e6dc7d08d3f9', 'Wailing Bell', 'A heavy cast iron bell imbued with ancient powers. Allows the user to enter and walk the Spirit World when rung.\r\n<ul>\r\n<li>Grants near total invisibility when moving.</li>\r\n\r\n<li>Total invisibility while standing still.</li>\r\n\r\n<li>Faster movement speed when invisible.</li>\r\n\r\n<li>No Terror Radius while invisible.</li>\r\n\r\n<li>Cannot attack while invisible.</li>\r\n\r\n<li>Grants a speed burst for 1 second upon uncloaking.</li>\r\n\r\n<li>Exposure to bright light can burn the user out of the Spirit World.</li>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/79/FulliconPowers_bell.png/130px-FulliconPowers_bell.png?version=7065dd44434192603a86725ae407ee9c'),
(3, 'The Hillbilly', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/aa/HB_charSelect_portrait.png/150px-HB_charSelect_portrait.png?version=f10472dd5349118f4841409bdfda5bd0', 'The Chainsaw', 'The Chainsaw is the secondary weapon of the Hillbilly. A hulking and deadly Chainsaw of terrifying strength. Grinds through flesh, bone, and soul. Once revved up, sends its user into a violent frenzy.\r\n<ul>\r\n<li>Break into a crazed Chainsaw Sprint upon activation.</li>\r\n\r\n<li>Automatically triggers the Dying State on a successful hit.</li>\r\n</ul>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/9e/FulliconPowers_chainsaw.png/130px-FulliconPowers_chainsaw.png?version=3324239c5a6ee22347946469a40d2e2b'),
(4, 'The Nurse', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/d6/NR_charSelect_portrait.png/150px-NR_charSelect_portrait.png?version=6b37276dab3c56f6c2aefb29d3985ee3', 'Spencer\'s Last Breath', 'Spencer\'s Last Breath is The Nurse\'s main Power: channelling its energy allows The Nurse to pierce and jump through the Spirit World in a Blink multiple times in a row. Doing so leaves her in a state of fatigue as blinking is quite painful to her, hence why she shrieks after each Blink.\r\n<ul>\r\n<li>Blink up to 20 metres on charge activation.</li>\r\n\r\n<li>Chain Blinks have only half the maximum </li>\r\n<li>Blink distance (up to 12 metres)</li>\r\n\r\n<li>Can blink twice before becoming fatigued.</li>\r\n<li>Can perform a Lethal Blink Attack after blinking.</li>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/c8/FulliconPowers_breath.png/130px-FulliconPowers_breath.png?version=d5a916f6ec3e48c79d63c910c76c9ffe'),
(5, 'The Shape', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/74/SH_charSelect_portrait.png/150px-SH_charSelect_portrait.png?version=00aaedf5a37415f77a9367dc31b8aa41', 'Evil Within', 'His special ability is called \"Evil Within\", a 3-tier gauge which affects the Shape\'s ability to hunt differently for each respective phase. The Shape can stalk survivors, which fills up his current Evil Within phase. The Shape gains pure benefit from going up Evil Within stages, with the exception of his terror radius, which increases for each stage. Any survivors currently being stalked will be highlighted brightly, and more than one survivor can be stalked at once. Survivors that are hiding in foliage (corn, grass, shrubs, etc.) or are breaking line of sight will either delay or stop The Shape from gaining any points from stalking them.\r\n<ul>\r\n<li>Tier 1:\r\n<ul>\r\n <li>Tremendously reduced Terror Radius (6 \r\nmetres).</li>\r\n\r\n <li>Slightly reduced Movement Speed (105 \r\n%).</li>\r\n\r\n <li>Slightly reduced Lunge.</li>\r\n\r\n <li>Normal Vaulting Speed (1.7 seconds)</li>\r\n\r\n <li>Grants immunity to detection Perks.</li>\r\n</li>\r\n</ul>\r\n\r\n<li>Tier 2:\r\n <ul>\r\n <li>Moderately reduced Terror Radius (16 \r\nmetres).</li>\r\n \r\n <li>Normal Movement Speed (115 %).</li>\r\n \r\n <li>Normal Lunge</li>\r\n\r\n <li>Slightly increased Vaulting Speed (1.5 \r\nseconds).</li>\r\n</ul></li>\r\n<li>Tier 3:\r\n<ul>\r\n <li>Normal Terror Radius (32 metres).</li>\r\n\r\n<li>Normal Movement Speed.</li>\r\n\r\n <li>Slightly increased Lunge</li>\r\n\r\n<li>Attacks deal double damage.</li>\r\n\r\n<li>Lasts for 60 seconds (default).</li>\r\n\r\n <li>Moderately increased Vaulting Speed (1.3 seconds).</li>\r\n</ul></li>\r\n</ul>\r\nUpon reaching Tier II, The Shape can never fall back to Tier I. The colour of a Survivor\'s Aura determines how much evil is left in them (ranging from white/full to red/empty).', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/f2/FulliconPowers_stalker1.png/130px-FulliconPowers_stalker1.png?version=1906bbf1061aa91270bf8378024f5b46'),
(6, 'The Hag', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/98/HA_charSelect_portrait.png/150px-HA_charSelect_portrait.png?version=9baa69b090642e8515d8e1bc9e248dee', 'Blackened Catalyst', 'The Blackened Catalyst is The Hag\'s main Power: she bends and shapes mud to her will. With simple ritualistic drawings, she creates deceitful duplicates of herself made from mud and decay which she can use for various effects.\r\n\r\nDrawing a Phantasm Trap works very similar to setting down a Bear Trap. She can have up to 10 Traps at once distributed across the map, with each subsequently set Trap removing the oldest one.\r\n\r\nHer Phantasm Traps also allow to instantly travel up to 40 metres but are vulnerable to Flashlights as they will burn a Phantasm Trap away and thus destroy it.\r\n<ul>\r\n<li>Grants the ability to create and maintain 10 Phantasm Traps.\r\n</li>\r\n<li>Grants the ability to instantly travel to triggered Phantasms when within 40 metres of range.\r\n</li>\r\n<li>Survivors who enter the trap area trigger a Phantasm of The Hag to appear and disorient the Survivor.</li>\r\n</ul>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/07/FulliconPowers_blackenedCatalyst.png/130px-FulliconPowers_blackenedCatalyst.png?version=98b7e9762aae9c8ef2da893729cebd01'),
(7, 'The Doctor', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/da/DO_charSelect_portrait.png/150px-DO_charSelect_portrait.png?version=aed296e224885de660ec3457798f4898', 'Carter\'s Spark', 'Is it a gift, or a curse? The Entity has ignited a corrupted and inexhaustible spark in The Doctor\'s heart which allows him to generate electro-convulsive power at will. His insidious treatment corrupts the minds of those it touches. Victims shocked by the corrupt spark begin to lose their grip on reality and, with repeated exposure, inevitably succumb to madness.\r\n<ul>\r\n<li>Grants the ability to switch between Treatment and Punishment modes.\r\n</li>\r\n<li>While in Treatment mode, you move slower and generate a Static Field based on your Terror Radius which slowly increases the Survivors\' Madness based on their proximity to the The Doctor. In exchange for your normal attack, grants the ability to charge and release a Shock Therapy attack that greatly increases Survivors\' Madness, and prevents them from performing any interactions for 2.5 seconds. Treatment mode still allows The Doctor to do normal interactions such as vaulting windows, damaging generators, breaking pallets and grabbing Survivors.\r\nSurvivors with prolonged exposure to the Static Field, or when being hit repeatedly with the Shock Therapy attack, will enter Madness I, II, III and scream, revealing their position to The Doctor. Madness II and III cause Survivors to experience Doctor Hallucinations which can be seen by The Doctor as an allied aura if the Survivor is in Madness III.</li>\r\n<li>While in Treatment mode, you move slower and generate a Static Field based on your Terror Radius which slowly increases the Survivors\' Madness based on their proximity to the The Doctor. In exchange for your normal attack, grants the ability to charge and release a Shock Therapy attack that greatly increases Survivors\' Madness, and prevents them from performing any interactions for 2.5 seconds. Treatment mode still allows The Doctor to do normal interactions such as vaulting windows, damaging generators, breaking pallets and grabbing Survivors.\r\nSurvivors with prolonged exposure to the Static Field, or when being hit repeatedly with the Shock Therapy attack, will enter Madness I, II, III and scream, revealing their position to The Doctor. Madness II and III cause Survivors to experience Doctor Hallucinations which can be seen by The Doctor as an allied aura if the Survivor is in Madness III.-Grants the ability to switch between Treatment and Punishment modes.</li>\r\n\r\n<li>While in Treatment mode, you move slower and generate a Static Field based on your Terror Radius which slowly increases the Survivors\' Madness based on their proximity to the The Doctor. In exchange for your normal attack, grants the ability to charge and release a Shock Therapy attack that greatly increases Survivors\' Madness, and prevents them from performing any interactions for 2.5 seconds. Treatment mode still allows The Doctor to do normal interactions such as vaulting windows, damaging generators, breaking pallets and grabbing Survivors.\r\nSurvivors with prolonged exposure to the Static Field, or when being hit repeatedly with the Shock Therapy attack, will enter Madness I, II, III and scream, revealing their position to The Doctor. Madness II and III cause Survivors to experience Doctor Hallucinations which can be seen by The Doctor as an allied aura if the Survivor is in Madness III. </li>\r\n</ul>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/e3/FulliconPowers_cartersSpark.png/130px-FulliconPowers_cartersSpark.png?version=5c218332ff49a1292ca70edbb17555bb'),
(8, 'The Huntress', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/4/42/BE_charSelect_portrait.png/150px-BE_charSelect_portrait.png?version=9aef8e3ddc888af882c71bfe1de6379b', 'Hunting Hatchets', 'A skill taught by her mother and mastered in the wild. The Huntress can throw Hatchets with deadly precision.\r\n<ul>\r\n<li>Start the Trial with 5 Hatchets.</li>\r\n\r\n<li>Charge throw for maximum throwing speed.</li>\r\n\r\n<li>Can cancel Hatchet throw.</li>\r\n\r\n<li>Hatchets are consumed on use.</li>\r\n\r\n<li>Refill Hatchets at Lockers.</li>\r\n\r\n<li>The Huntress hums from 45-20 metres, her \r\nTerror Radius starts at 20 metres. The Humming is non-directional.</li>\r\n</ul>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/ed/FulliconPowers_huntingHatchets.png/130px-FulliconPowers_huntingHatchets.png?version=f0047e9c5116e143f6561db5fbb1f8bd'),
(9, 'The Cannibal', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/4/4c/CA_charSelect_portrait.png/150px-CA_charSelect_portrait.png?version=7cdd0ed9c6bf3ce326cf7a28f89f063d', 'Bubba\'s Chainsaw', 'An incredibly powerful and heavy Chainsaw which sank its teeth into countless victims. A suitable birthday gift for The Cannibal.\r\n<ul>\r\n<li>Start a timed sweeping attack on activation.</li>\r\n\r\n<li>Can hit multiple targets in one Chainsaw charge.</li>\r\n\r\n<li>Running into an object forces The Cannibal into a Tantrum, this attack damages anyone around him.</li>\r\n\r\n<li>Automatically puts victims into the dying state on a successful hit.</li>\r\n\r\n<li>The Chainsaw charge won\'t stop until the user bumps into an object or gets stunned.</li>\r\n', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/f5/FulliconPowers_bubbasChainsaw.png/130px-FulliconPowers_bubbasChainsaw.png?version=2478676017ef4d199d9f29d2bbc64259'),
(10, 'The Nightmare', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/92/EK_charSelect_portrait.png/150px-EK_charSelect_portrait.png?version=25821074fc569d9e676dbfcb43c82fb6', 'Dream Demon', 'Death won\'t accept him and thus he remains, a calamity, indisputable master of his victims\' nightmares. The Nightmare passively puts Survivors to sleep over 60 seconds, after which they enter the Dream World.\r\n<ul>\r\n<li>Awake Survivors hear the Terror Radius and see The Nightmare from within 16 meters.</li>\r\n\r\n<li>The Nightmare appears intermittently to awake Survivors from 16 meters to 32 meters and is invisible to awake Survivors beyond that.</li>\r\n\r\n<li>Hold the Power Button (Default: M2) to place a Dream Snare on the ground directly in front of The Nightmare\r\nIt will afflict Survivors who step in it with the Hindered Status Effect, slowing them down while they remain in the trap and for a short duration after leaving it.</li>\r\n\r\n<li>Hold the Active Ability Button (Default: LCTRL) to perform a Dream Projection and teleport to a Generator in your view.</li>\r\n\r\n<li>Releasing the button early will cancel the action</li>.\r\n\r\n<li>For each Survivor in the Dream World, the cooldown of the Dream Projection is reduced by 15%.</li>\r\n\r\n<li>Once in the Dream World, Survivors hear a lullaby instead of the Terror Radius and can be affected by Dream Snares.</li>\r\n\r\n<li>Survivors can wake up by failing Skill \r\nChecks, finding an awake Survivor to perform the Wake Up action, or by using the alarm clocks found within the environment.</li>\r\n\r\n<li>Each successive Wake Up action takes twice as long to perform.</li>\r\n\r\n<li>Using the Alarm Clocks will give \r\nSurvivors 30 seconds before they start falling asleep again.</li>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/4/4b/FulliconPowers_dreamDemon.png/130px-FulliconPowers_dreamDemon.png?version=5c00a6794535c959305287cfbbbdcca4'),
(11, 'The Pig', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/6a/FK_charSelect_portrait.png/150px-FK_charSelect_portrait.png?version=42663f15701cc032ddd8afaf0ba38922', 'Jigsaw\'s Baptism', 'Forever devoted to her master\'s cause, she punished the ungrateful and the guilty with slyness and murderous puzzles. The Pig can move stealthily, dash in ambush attacks and put deadly Reverse Bear Traps on Survivors\' heads.\r\n\r\nUse the Secondary Power interaction to assume a crouching position. While crouching:\r\n\r\nThe Pig has no Terror Radius. Activate the attack interaction to dash and perform an ambush attack. Start the trial with 4 Reverse Bear Traps:\r\n<ul>\r\n<li>Reverse Bear Traps are put on Dying Survivors.</li>\r\n\r\n<li>Reverse Bear Traps automatically sacrifice the Survivor when they trigger.</li>\r\n\r\n<li>Active Reverse Bear Traps trigger automatically beyond the Exit Gates.\r\nReverse Bear Traps trigger once their timers expire.</li>\r\n\r\n<li>Reverse Bear Traps timers start when a Generator is completed.</li>\r\n\r\n<li>Survivors can free themselves from Reverse Bear Traps by searching Jigsaw Boxes found around the Map to find the correct Key.</li>\r\n</ul>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/2a/FulliconPowers_jigsawsBaptism.png/130px-FulliconPowers_jigsawsBaptism.png?version=5a037be7693d7f18f88e05fd14307c6b'),
(12, 'The Clown', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/11/GK_charSelect_portrait.png/150px-GK_charSelect_portrait.png?version=cdd3c1ecdbb9316613ffba746e57ee2e', 'The Afterpiece Tonic', 'Throughout his years experimenting with anaesthetics and muscle relaxants, The Clown developed several effective concoctions and formulas. His favourite, The Afterpiece Tonic, he has used to great effect, intoxicating and capturing many unwilling victims.\r\n<ul>\r\n<li>Tap or hold and release the Power button to launch a bottle of The Afterpiece Tonic. On contact, the bottle will break, emitting a gas cloud that will intoxicate any Survivors within the area of effect.</li>\r\n\r\n<li>Intoxicated Survivors will suffer from impaired vision, reduced movement speed (-15 %) and involuntary coughing for 2 seconds after leaving the Gas Cloud.</li>\r\n\r\nPress and hold the Secondary Power button to replenish your bottles of The Afterpiece Tonic.', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/2e/FulliconPowers_gasBomb.png/130px-FulliconPowers_gasBomb.png?version=58d130098b88c9d308452c87500c4ef8'),
(13, 'The Spirit', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/5d/HK_charSelect_portrait.png/150px-HK_charSelect_portrait.png?version=4efd5e8a634ed10d82b99d0ff00595ce', 'Yamaoka\'s Haunting', 'Yamaoka is the name she carries from her ancestors, who unleashed hell on the battlefield. The Spirit draws her power from their wrath, haunting the living as retribution for her suffering.\r\n\r\nThe Spirit can use her Power, Yamaoka\'s Haunting, to enter an ethereal plane and reappear at a new location.\r\n<ul>\r\n<li>Tap and hold the Power button to charge. The Spirit will depart her physical body, leaving behind a stationary \"Husk\".</li>\r\n\r\nWhile Yamaoka\'s Haunting is active:\r\n\r\n<li>The Spirit may traverse freely to a new location, moving at a faster rate for a short duration (5 seconds). She is still confined to movement within the physical environments and surroundings.</li>\r\n\r\n<li>The Spirit leaves the physical plane, losing sight of all Survivors. She can, however, still sense the Scratch Marks they leave in the environment.</li>\r\n\r\n<li>The Spirit will produce an audible cue at her current location.</li>\r\n\r\n<li>Once the Power has ended, The Spirit retains her speed boost for a brief moment and her Husk fades away.</li>\r\n</ul>\r\nUsing Yamaoka\'s Haunting depletes The Spirit\'s Power bar. The Power bar will automatically replenish over time (15 seconds). The Power bar must be fully replenished before it can be triggered again.', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/0c/FulliconPowers_yamaokasHaunting.png/130px-FulliconPowers_yamaokasHaunting.png?version=8a40eea2cc171f8c90c387409dbad897'),
(14, 'The Legion', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/80/KK_charSelect_portrait.png/150px-KK_charSelect_portrait.png?version=b63da1b51ce9ffcc548b30d5044c4a7e', 'Feral Frenzy', 'The Legion has a Frenzy power gauge that builds up over time. The power, Feral Frenzy, can be activated by tapping the Power button. While active, the power gauge drains rapidly and the power ends when the gauge is empty, triggering an extended recovery cool-down.\r\n\r\nWhen activating Feral Frenzy, The Legion enters a deadly rage. While the power is active:\r\n<ul>\r\n<li>The Legion sprints faster than base movement speed.</li>\r\n\r\n<li>The Legion can vault Pallets, but cannot break them.</li>\r\n\r\n<li>Survivors\' Scratch Marks and Blood Pools are hidden from The Legion\'s view.</li>\r\n\r\n<li>Missing an attack ends Feral Frenzy.\r\n\r\nWhile Feral Frenzy is active, hitting a Survivor who is not currently afflicted with the Deep Wound Status Effect:\r\n</li>\r\n<li>Applies the Deep Wound Status Effect.\r\nInjures the Survivor, if they are not already injured.\r\nRefills The Legion\'s entire power gauge.\r\nTriggers \"Killer Instinct\", revealing the location of all Survivors who do not have the Deep Wound Status Effect applied and are within The Legion\'s Terror Radius.\r\nWhile Feral Frenzy is active, hitting a Survivor is currently afflicted with the Deep Wound Status Effect or missing an attack:\r\n\r\nDepletes The Legion\'s entire power gauge and ends the power immediately.</li></ul>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/09/FulliconPowers_feralFrenzy.png/130px-FulliconPowers_feralFrenzy.png?version=f51c7813930fe20dd6acf351c2b046e2'),
(15, 'The Ghost Face', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/cb/OK_charSelect_portrait.png/150px-OK_charSelect_portrait.png?version=9ddc082ec1553afcee65d91343b87883', 'Night Shroud', 'The Ghost Face used to study his victims for weeks, meticulously registering their habits. When the urge to kill swelled, he\'d know exactly how and where to strike.\r\n\r\nPress the Power button to activate Night Shroud when the Power gauge is full.\r\n\r\n<ul>\r\n<li>While Night Shroud is active, Ghost Face has no Terror Radius and emits no Red Stain.</li>\r\n\r\n<li>Performing a basic attack will fully deplete the Power gauge and deactivate Night Shroud.</li>\r\n\r\n<li>Survivors within a close proximity to Ghost Face can detect him by looking in his direction for 1.5 seconds. This will fully deplete the Power gauge and automatically deactivate Night Shroud.</li>\r\n\r\nHold down the Power button to stalk your victims while Night Shroud is active. Hold down the Power button while behind cover to lean out and stalk at a faster rate.\r\n\r\n<li>Completing stalk progress on a Survivor will mark your target and apply the Exposed Status Effect to your Mark for a limited amount of time.</li>\r\n\r\nPress the Active Ability button to crouch. Press it again to stand.\r\n\r\n<li>While crouched, Ghost Face moves at a slower speed.</li>\r\n</ul>', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/74/FulliconPowers_nightShroud.png/130px-FulliconPowers_nightShroud.png?version=8680fb9a5f72e94d42f357e40637dc4b'),
(16, 'The Plague', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/b/b2/MK_charSelect_portrait.png/150px-MK_charSelect_portrait.png?version=6f31c1dcb8fadc520efc4f82ca11f24c', 'Vile Purge', 'Hold down the Power Button to charge Vile Purge. Releasing the button unleashes a stream of infectious bile.\r\n\r\nA Survivor hit by the stream becomes infected. A Survivor accumulates an amount of infection by being hit by the stream, running, or performing interactions. Environmental objects also become infected for a short duration when hit by the stream.\r\n\r\nIf the Survivor\'s infection indicator is completely filled, they are forced to vomit, and continue to do so at random intervals; they become injured, if they are not already, and gain the Broken Status Effect; and they pass on their infection to other Survivors, as well as environmental objects that they interact with.\r\n\r\nInfected Survivors can remove all infection by interacting with a Pool of Devotion. This blocks it from further use by other Survivors. If the Survivor is injured, they become healthy. If all Pools of Devotion are corrupted at the same time, all Pools of Devotion revert to their clean state and The Plague automatically gains Corrupt Purge.\r\n\r\nThe Plague may consume the corruption at a Pool of Devotion that has previously been used by a Survivor. This removes the corruption from the Pool and transforms Vile Purge into Corrupt Purge. Corrupt Purge instantly damages any Survivors hit by the stream, but does not apply infection. This effect only lasts for a short duration.', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/b/b5/FulliconPowers_vilePurge.png/130px-FulliconPowers_vilePurge.png?version=2f904c8bc1d519fcc922b2ef8d2e698a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `killers_addons`
--

CREATE TABLE `killers_addons` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `logo` text NOT NULL,
  `rarity` text NOT NULL,
  `desc` text NOT NULL,
  `killerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `killers_addons`
--

INSERT INTO `killers_addons` (`id`, `name`, `logo`, `rarity`, `desc`, `killerId`) VALUES
(1, 'Trapper Sack', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/fd/FulliconAddon_trapperSack.png/64px-FulliconAddon_trapperSack.png?version=8d5736e0d12918378f65e7e76f174191', 'Common', 'A crude leather sack suitable for foraging.\r\n\r\n-Start with 1 extra Bear Trap.\r\n\r\n-Allows the transportation of 1 extra Bear Trap.', 1),
(2, 'Trapper Gloves', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/51/FulliconAddon_trapperGloves.png/64px-FulliconAddon_trapperGloves.png?version=bdc0b4e8231215bc4d23a0bf13ead63f', 'Common', 'Protective padded leather gloves.\r\n\r\n-Slightly increases the Bear Trap setting speed.', 1),
(3, 'Strong Coil Spring', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/9c/FulliconAddon_strongCoilSpring.png/64px-FulliconAddon_strongCoilSpring.png?version=700148fe3b1aebbe38a79b4f082e1631', 'Common', 'A large and heavy coil spring which adds a good amount of strength to the Bear Trap\'s hold.\r\n\r\n-Slightly increases the Bear Trap sabotage time.\r\n\r\n-Slightly increases the Bear Trap disarm time.', 1),
(4, 'Padded Jaws', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/10/FulliconAddon_paddedJaws.png/64px-FulliconAddon_paddedJaws.png?version=c4b9ac19825a87c1418a746bca390a94', 'Common', 'These padded jaws are meant to restrain, not to wound.\r\n\r\n-Bear Traps do not inflict damage to trapped victims.\r\n\r\n-Points awarded for trapping Survivors are increased by 100 %.', 1),
(5, 'Trapper Bag', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/60/FulliconAddon_trapperBag.png/64px-FulliconAddon_trapperBag.png?version=e2ec6ff921a6aa9fb09225a84a4945fa', 'Uncommon', 'A cured leather waist bag. Large and sturdy to transport hunting equipment.\r\n\r\n-Start with 1 extra Bear Trap.\r\n\r\n-Allows the transportation of 2 extra Bear Traps.', 1),
(6, 'Trap Setters', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/a6/FulliconAddon_trapSetters.png/64px-FulliconAddon_trapSetters.png?version=31aeea0456abd3cf32544a0285968855', 'Uncommon', 'Simple tools designed to quickly and safely set Bear Traps.\r\n\r\n-Moderately increases the Bear Trap setting speed.', 1),
(7, 'Serrated Jaws', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/12/FulliconAddon_serratedJaws.png/64px-FulliconAddon_serratedJaws.png?version=09f014fe71370d7f12e4cefc53aa9469', 'Uncommon', 'These replacement Bear Trap jaws have saw-like blades which cause awful open wounds when they snap.\r\n\r\n-Survivors injured by a Bear Trap suffer from the Haemorrhage Status Effect until healed.', 1),
(8, 'Logwood Dye', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/11/FulliconAddon_logwoodDye.png/64px-FulliconAddon_logwoodDye.png?version=f3dafef95e0c6352bfb361558dd19d23', 'Uncommon', 'Wood ash. When boiled, can be used to dye Bear Traps and make them less noticeable.\r\n\r\n-Moderately darkens the Bear Trap.', 1),
(9, '4-Coil Spring Kit', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/a3/FulliconAddon_4-coilSpringKit.png/64px-FulliconAddon_4-coilSpringKit.png?version=b468eae79d8c5560fa1225bff223bdc4', 'Uncommon', 'A replacement kit for Bear Traps which changes the usual dual spring system to 4 coil springs, adding a great amount of strength to a Bear Trap\'s hold.\r\n\r\n-Moderately increases the Bear Trap sabotage time.\r\n\r\n-Moderately increases the Bear Trap disarm time.', 1),
(10, 'Wax Brick', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/99/FulliconAddon_waxBrick.png/64px-FulliconAddon_waxBrick.png?version=9e2cad01cc989bc50df6f19795f55239', 'Rare', 'A block of wax used to lower friction and facilitate movement in mechanical parts.\r\n\r\n-Moderately reduces the chance to escape a Bear Trap.', 1),
(11, 'Tar Bottle', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/aa/FulliconAddon_tarBottle.png/64px-FulliconAddon_tarBottle.png?version=aa300fbf0233faae327714c9a29cdeeb', 'Rare', 'A black, matte and sticky substance similar to tar. When applied to Bear Traps, makes them far less noticeable.\r\n\r\n-Considerably darkens the Bear Trap.', 1),
(12, 'Setting Tools', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/6f/FulliconAddon_settingTools.png/64px-FulliconAddon_settingTools.png?version=009a849585c7e355e8bbd16a06a9c1ea', 'Rare', 'Specialised tools designed to quickly and effortlessly set Bear Traps.\r\n\r\n-Considerably increases the Bear Trap setting speed.\r\n\r\n-Moderately increases the rescue and escape times from Bear Traps.', 1),
(13, 'Secondary Coil', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/e2/FulliconAddon_secondaryCoil.png/64px-FulliconAddon_secondaryCoil.png?version=0ce9f77a4adc821bf039ec67c1a7d74c', 'Rare', 'A secondary coil which keeps a Bear Trap functional in times when the primary coil becomes unusable.\r\n\r\n-Considerably increases the Bear Trap sabotage time.\r\n\r\n-Considerably increases the Bear Trap disarm time.', 1),
(14, 'Rusted Jaws', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/9f/FulliconAddon_rustedJaws.png/64px-FulliconAddon_rustedJaws.png?version=cfd118b90032cc7805ab3c0130af24a4', 'Rare', 'These Bear Trap jaws are covered with crusty and volatile rust spots that make injuries particularly difficult to heal.\r\n\r\n-Survivors injured by a Bear Trap suffer moderately from the Mangled Status Effect', 1),
(15, 'Stitched Bag', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/68/FulliconAddon_stitchedBag.png/64px-FulliconAddon_stitchedBag.png?version=c6f4be0b7e86d854fd2d3a8b903e9206', 'Very rare', 'Skin pieces of all sorts crudely stitched together making for a very large bag.\r\n\r\n-Start with 2 extra Bear Traps.\r\n\r\n-Allows the transportation of 2 extra Bear Traps.', 1),
(16, 'Oily Coil', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/1e/FulliconAddon_oilyCoil.png/64px-FulliconAddon_oilyCoil.png?version=d1dd0e67607949c27b11442e702c29f6', 'Very rare', 'A clear oil that makes handling the Trap\'s spring more hazardous.\r\n\r\n-Tremendously increases the Bear Trap sabotage time.\r\n\r\n-Tremendously increases the Bear Trap disarm time.', 1),
(17, 'Honing Stone', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/2d/FulliconAddon_honingStone.png/64px-FulliconAddon_honingStone.png?version=59556e39c5d5dc766d047004b11320e3', 'Very rare', 'When used with the Bear Trap, the Honing Stone sharpens its blades. The razor-sharp blades inflict deep wounds aimed at bleeding the victim as fast as possible.\r\n\r\n-Inflicts the Dying State upon the trapped victim if they free themselves.', 1),
(18, 'Fastening Tools', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/9c/FulliconAddon_fasteningTools.png/64px-FulliconAddon_fasteningTools.png?version=b99ae281839d83f5d9b7bfe2b0d9997c', 'Very rare', 'A specialised set of tools used to fasten Bear Traps to ensure their effectiveness.\r\n\r\n-Tremendously increases the Bear Trap setting speed.\r\n\r\n-Considerably increases the rescue and escape time from Bear Traps.\r\n\r\n-Moderately reduces the chance to escape a Bear Trap.', 1),
(19, 'Iridescent Stone', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/8e/FulliconAddon_iridescentStone.png/64px-FulliconAddon_iridescentStone.png?version=26cc4a6a77ad4037699b9949a204a9b8', 'Ultra rare', 'Traps sharpened with this sickly gleaming stone seem to gain a life of their own.\r\n\r\n-Every 30 seconds, one closed Bear Trap chosen at random becomes set.', 1),
(20, 'Bloody Coil', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/b/b3/FulliconAddon_bloodyCoil.png/64px-FulliconAddon_bloodyCoil.png?version=4f67e12b7e5a3ced6f047e33860f754d', 'Ultra rare', 'Part sticky, part slippery, this grim liquid makes handling the Trap\'s spring more dangerous.\r\n\r\n-When a Trap is sabotaged or disarmed by a Healthy Survivor, the bloody coils exact their price and that Survivor becomes Injured.\r\n\r\n-Slightly increases the Bear Trap sabotage time.\r\n\r\n-Slightly increases the Bear Trap disarm time.', 1),
(21, 'Rope Necklet', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/dd/FulliconAddon_ropeNecklet.png/64px-FulliconAddon_ropeNecklet.png?version=dced36696240ffce96ae00a89688adf8', 'Common', 'A rigid ornament worn around the neck made from dead plants.\r\n\r\n-Slightly reduces the setting time of Phantasm Traps.', 6),
(22, 'Powdered Eggshell', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/fe/FulliconAddon_powderedEggshell.png/64px-FulliconAddon_powderedEggshell.png?version=1814ba0f35f38fd7504ac15f1bbdbe28', 'Common', 'Minuscule eggshell fragments shimmering with a pale golden hue.\r\n\r\n-Slightly increases the tripped Phantasm Trap duration time.', 6),
(23, 'Dead Fly Mud', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/07/FulliconAddon_deadFlyMud.png/64px-FulliconAddon_deadFlyMud.png?version=591d26ca08c9b520038e0719ebf04739', 'Common', 'A small lump of mud, black with the remains of flies. Devoured to increase stamina.\r\n\r\n-Slightly increases the distance from where The Hag can teleport to her traps.', 6),
(24, 'Bog Water', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/73/FulliconAddon_bogWater.png/64px-FulliconAddon_bogWater.png?version=21464a548c71f040f8aae4d8017c3a2c', 'Common', 'Murky water contained in a glass pill bottle from another time.\r\n\r\n-Slightly increases the effective Phantasm Trap range.', 6),
(25, 'Pussy Willow Catkins', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/65/FulliconAddon_pussyWillowCatkins.png/64px-FulliconAddon_pussyWillowCatkins.png?version=ff3f0a51846c1ab5b92ef50a10a2f59d', 'Uncommon', 'A handful of small, pristine flower clusters covered in a fine greyish fur.\r\n\r\n-Reveals the Survivor\'s Aura for 3 seconds when they trip the Phantasm Trap.', 6),
(26, 'Half Eggshell', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/e7/FulliconAddon_halfEggshell.png/64px-FulliconAddon_halfEggshell.png?version=43cc1abd73b6737261e5e8ae65a8b61d', 'Uncommon', 'One half of a perfectly round hollow eggshell.\r\n- Moderately increases the tripped Phantasm Trap duration time.', 6),
(27, 'Dragonfly Wings', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/26/FulliconAddon_dragonflyWings.png/64px-FulliconAddon_dragonflyWings.png?version=c9b59a28010468bfdef1524f6e16a118', 'Uncommon', 'A handful of yellowish wings, dry and crisp. Devoured to increase stamina.\r\n\r\n-Moderately increases the distance from where The Hag can teleport to her traps.', 6),
(28, 'Cypress Necklet', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/9e/FulliconAddon_cypressNecklet.png/64px-FulliconAddon_cypressNecklet.png?version=823573df7ece3d08221c36187565c623', 'Uncommon', 'A rigid ornament worn around the neck made from dead plants adorned with crudely attached cypress bark and swamp moss.\r\n\r\n-Moderately reduces the setting time of Phantasm Traps.', 6),
(29, 'Bloodied Water', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/33/FulliconAddon_bloodiedWater.png/64px-FulliconAddon_bloodiedWater.png?version=a63d6a8b6e9a323d9068a85c9357fc0e', 'Uncommon', 'Tainted water contained in a folded water lily leaf.\r\n\r\n-Moderately increases the effective Phantasm Trap range.', 6),
(30, 'Willow Wreath', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/ee/FulliconAddon_willowWreath.png/64px-FulliconAddon_willowWreath.png?version=572b877ae3e55826c68094ddfd42c7ba', 'Rare', 'Three frail willow branches attached to form a triangular wreath.\r\n\r\n-Reveals the Survivor\'s Aura for 5 seconds when they trip the Phantasm Trap.', 6),
(31, 'Swamp Orchid Necklet', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/e5/FulliconAddon_swampOrchidNecklet.png/64px-FulliconAddon_swampOrchidNecklet.png?version=8c924ac355ad94a831a519fb7d37376a', 'Rare', 'A rigid ornament worn around the neck made from dead plants adorned with withered orchid petals and leaves.\r\n\r\n-Considerably reduces the setting time of Phantasm Traps.', 6),
(32, 'Dried Cicada', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/b/bf/FulliconAddon_driedCicada.png/64px-FulliconAddon_driedCicada.png?version=1dfed114a221ee2f4f8407c6c3d78572', 'Rare', 'A large swamp cicada covered in a fine layer of ash. Crispy. Devoured to increase stamina.\r\n\r\n-Considerably increases the distance from where The Hag can teleport to her traps.', 6),
(33, 'Cracked Turtle Egg', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/8d/FulliconAddon_crackedTurtleEgg.png/64px-FulliconAddon_crackedTurtleEgg.png?version=0cb9caaa766ddbe6c7720be16848252b', 'Rare', 'A pale orange turtle egg, cracked and emptied of its content.\r\n\r\n-Considerably increases the tripped Phantasm Trap duration time.', 6),
(34, 'Bloodied Mud', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/8f/FulliconAddon_bloodiedMud.png/64px-FulliconAddon_bloodiedMud.png?version=21c9715d360fc148a03bd312550c0858', 'Rare', 'A handful of mud with veins of deep crimson. The bloody layers empower the mud.\r\n\r\n-Considerably increases the effective Phantasm Trap range.', 6),
(35, 'Scarred Hand', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/07/FulliconAddon_scarredHand.png/64px-FulliconAddon_scarredHand.png?version=a96acee42a6c346770397b5fd80c2c03', 'Very rare', 'The cut up, severed hand of the cannibal village butcher. The trapped life essence within unlocks tremendous potential in The Hag\'s power.\r\n\r\n-Mud Phantasms have collision.\r\n\r\n-Removes The Hag\'s ability to teleport to her traps.\r\n\r\n-Grants 300 % Bloodpoints from Deviousness Score Events.\r\n\r\n-Trumps all other Add-ons.', 6),
(36, 'Rusty Shackles', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/ef/FulliconAddon_rustyShackles.png/64px-FulliconAddon_rustyShackles.png?version=59879f879ce2b909fa00d03d5582cdc1', 'Very rare', 'Shackles once used to hold prisoners and carcasses in the cannibal village cellar. The trapped life essence within unlocks tremendous potential in The Hag\'s power.\r\n\r\n-Trap does not spawn a Hag Phantasm.\r\n\r\n-Tripped Phantasm Traps give no indication of being triggered to the Survivor.', 6),
(37, 'Grandma\'s Heart', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/13/FulliconAddon_granmasHeart.png/64px-FulliconAddon_granmasHeart.png?version=50b38b70cd594201d36e3e7a939b7647', 'Very rare', 'The cold heart of the cannibal village elder. The trapped life essence within unlocks tremendous potential in The Hag\'s power.\r\n\r\n-Reduces The Hag\'s Terror Radius to 0 metres when a Survivor triggers a Phantasm Trap.\r\n\r\n-Increases a Mud Phantasm\'s Terror Radius to 16 metres for the tripped Phantasm Trap duration time', 6),
(38, 'Disfigured Ear', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/cd/FulliconAddon_disfiguredEar.png/64px-FulliconAddon_disfiguredEar.png?version=ebd86ff3437abb2542da0de660eeab53', 'Very rare', 'The cannibal village deaf boy\'s ear. Deformed due to several hits to the head. The trapped life essence within unlocks tremendous potential in The Hag\'s power.\r\n\r\n-Survivors who trigger a Phantasm Trap are deafened for 6 seconds.', 6),
(39, 'Waterlogged Shoe', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/83/FulliconAddon_waterloggedShoe.png/64px-FulliconAddon_waterloggedShoe.png?version=0afc22debbd383605fedad227db4b4e5', 'Ultra rare', 'A child\'s shoe, long lost in the bog\'s waters. The trapped life essence within unlocks tremendous potential in The Hag\'s power.\r\n\r\n-Survivors within the triggered Trap range will suffer from the Hindered Status Effect.\r\n\r\n-Increases The Hag\'s movement speed slightly.\r\n\r\n-Removes The Hag\'s ability to teleport to her Phantasm Traps.', 6),
(40, 'Mint Rag', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/53/FulliconAddon_mintRag.png/64px-FulliconAddon_mintRag.png?version=616f3ba08503887a436b37fab3f35565', 'Ultra Rare', 'A small piece of cotton torn from the dress worn by Lisa Sherwood on the day she disappeared. The trapped life essence within unlocks tremendous potential in The Hag\'s power.\r\n\r\n-The Hag can teleport to any Phantasm Trap in the level.\r\n\r\n-Phantasm Trap teleport has a cool-down of 15 seconds.', 6),
(41, 'Vegetable Oil', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/6b/FulliconAddon_vegetableOil.png/64px-FulliconAddon_vegetableOil.png?version=c41711cebb51a5e818922cf514cd101a', 'Common', 'A rancid oil used as a poor quality lubricant.\r\n\r\n-Slightly decreases the Chainsaw\'s cool-down.', 9),
(42, 'Spark Plug', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/df/FulliconAddon_sparkPlug.png/64px-FulliconAddon_sparkPlug.png?version=9aca3c3cc6d68642405fc8c03e7430b1', 'Common', 'A clean spark plug fitted for a Chainsaw.\r\n\r\n-Slightly decreases the Chainsaw\'s charge time.', 9),
(43, 'Chainsaw File', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/39/FulliconAddon_chainsawFile.png/64px-FulliconAddon_chainsawFile.png?version=8b3ce67b7f03cf953a8eddda890437b1', 'Common', 'A file whose purpose is to hone Chainsaw chains.\r\nSlightly reduces the noise made by the Chainsaw.', 9),
(44, 'Speed Limiter', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/fd/FulliconAddon_speedLimiter.png/64px-FulliconAddon_speedLimiter.png?version=3499bca6e4f556453a3632d122727826', 'Uncommon', 'Chainsaw: A mechanical device that limits the amount of fuel small engines can intake at one time, forcing a constant and safe speed.\r\n\r\n -Chainsaw does not automatically \r\n trigger the Dying State.\r\n\r\n -Get 50 % more Bloodpoints for Chainsaw \r\n Score Events in the Deviousness \r\n Category.\r\n\r\nBubba\'s Chainsaw: A mechanical device that limits the amount of fuel small engines can intake at one time, forcing a constant and safe speed.\r\n\r\n -Chainsaw does not automatically \r\n trigger the Dying State.\r\n\r\n -Get 25 % more Bloodpoints for Chainsaw \r\n Score Events in the Deviousness \r\n Category.', 9),
(45, 'Shop Lubricant', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/5e/FulliconAddon_shopLubricant.png/64px-FulliconAddon_shopLubricant.png?version=8d4328ba43cd0c512af4a8d09a77fd12', 'Uncommon', 'An oil specifically formulated for Chainsaws. A special additive prevents oil throw off.\r\n\r\n-Moderately decreases the Chainsaw\'s cool-down.', 9),
(46, 'Primer Bulb', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/23/FulliconAddon_primerBulb.png/64px-FulliconAddon_primerBulb.png?version=6b673cd54dc1a24ddd3211908b84eb8e', 'Uncommon', 'Pumps more gas in the ignition system to ensure a quick and powerful start.\r\n\r\n-Moderately decreases the Chainsaw\'s charge time.', 9),
(47, 'Long Guide Bar', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/70/FulliconAddon_longGuideBar.png/64px-FulliconAddon_longGuideBar.png?version=35aca55462acae62e6a28001efaf128c', 'Uncommon', 'A sturdy iron replacement bar for long chains.\r\n\r\n-Slightly increases the reach of the Chainsaw attack.', 9),
(48, 'Knife Scratches', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/cf/FulliconAddon_knifeScratches.png/64px-FulliconAddon_knifeScratches.png?version=e97f2a9481e5bdcc9ea2de5ef7fd7f15', 'Uncommon', 'Scratches cover the Chainsaw\'s body, caused by a searing blade. Memories of reprimands fill its holder with the fear of failure.\r\n\r\n-Slightly increases the Chainsaw\'s movement speed.\r\n\r\n-Slightly increases the Chainsaw\'s charge time.', 9),
(49, 'Homemade Muffler', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/b/b5/FulliconAddon_homemadeMuffler.png/64px-FulliconAddon_homemadeMuffler.png?version=603098f5d2da98b81dc18da5cce23f5d', 'Uncommon', 'A makeshift exhaust system made of black gas pipes.\r\n\r\n-Moderately reduces the noise made by the Chainsaw.', 9),
(50, 'Grisly Chains', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/0f/FulliconAddon_grislyChains.png/64px-FulliconAddon_grislyChains.png?version=5124be1fd32be77970ef4b85992255f9', 'Uncommon', 'A chain with unusually hefty cutter teeth that leaves victims crippled even after being healed.\r\n\r\n-Moderately decreases the Repair speed of Survivors injured by the Chainsaw for 90 seconds.\r\n\r\n-Does not stack.', 9),
(51, 'Depth Gauge Rake', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/38/FulliconAddon_depthGaugeRake.png/64px-FulliconAddon_depthGaugeRake.png?version=51651fccfa4e097a512152103116b994', 'Uncommon', 'Tool that increases the angle of the depth gauge, making the chain eat more \"wood\".\r\n\r\n-Moderately reduces the time penalty when bumping into objects.', 9),
(52, 'Chilli', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/d5/FulliconAddon_chilli.png/64px-FulliconAddon_chilli.png?version=5c25470db42f8f4404c178aecd578d89', 'Uncommon', 'A big bowl of steaming Chilli to keep you fresh and strong.\r\n\r\n-Moderately increases acceleration when using the Chainsaw.', 9),
(53, 'The Grease', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/f8/FulliconAddon_theGrease.png/64px-FulliconAddon_theGrease.png?version=c74704cf67b35b7f7712ba3a30d713d6', 'Rare', 'A thick yellowish ooze, concocted by the Sawyers. Used for all-purpose lubrication around their house.\r\n\r\n-Considerably decreases the Chainsaw\'s cool-down.\r\n\r\n-Slightly decreases the Chainsaw\'s charge time.', 9),
(54, 'The Beast\'s Marks', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/57/FulliconAddon_theBeastsMarks.png/64px-FulliconAddon_theBeastsMarks.png?version=8c0fcc7cd8dc1ab3ac6308ca146214fa', 'Rare', 'Jagged marks cover the Chainsaw\'s body, punishment from the dark beast that lives in The Fog. Memories of violent reprimands fill its holder with the fear of failure.\r\n\r\n-Moderately increases the Chainsaw\'s movement speed.\r\n\r\n-Slightly increases the Chainsaw\'s charge time.', 9),
(55, 'Rusted Chains', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/61/FulliconAddon_rustedChains.png/64px-FulliconAddon_rustedChains.png?version=0290fc39785aed3986a655b9988971b0', 'Rare', 'This chain is covered with crusty and volatile rust spots that make injuries particularly difficult to heal.\r\n\r\n-Survivors injured by the Chainsaw suffer considerably from the Mangled Status Effect.\r\n\r\n-Does not stack.', 9),
(56, 'Light Chassis', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/0e/FulliconAddon_lightChassis.png/64px-FulliconAddon_lightChassis.png?version=20539d873b4a1f8ad27cfe24a8bd4aa1', 'Rare', 'A light and durable Chainsaw chassis with a shorter guide bar. Makes the Chainsaw easier to handle.\r\n\r\n-Considerably reduces the time penalty when bumping into objects.', 9),
(57, 'Carburettor Tuning Guide', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/72/FulliconAddon_carburettorTuningGuide.png/64px-FulliconAddon_carburettorTuningGuide.png?version=5027000103ac61ad6677c01516de8f39', 'Rare', 'A crudely drawn guide to properly adjust and tune a Chainsaw carburetor.\r\n\r\n-Moderately decreases the Chainsaw\'s charge time.\r\n\r\n-Slightly decreases the Chainsaw\'s cool-down.\r\n\r\n-Slightly reduces the time penalty when bumping into objects.\r\n\r\n-Slightly reduces the noise made by the Chainsaw.', 9),
(58, 'Begrimed Chains', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/84/FulliconAddon_begrimedChains.png/64px-FulliconAddon_begrimedChains.png?version=60cdfc79354629c0e474d737cb02f4b5', 'Very rare', 'This chain is stained with a foul substance that debilitates anyone it touches.\r\n\r\n-Moderately decreases the Repair speed on Survivors injured by the Chainsaw.\r\n\r\n-Survivors injured by the Chainsaw suffer considerably from the Mangled Status Effect.\r\n\r\n-Does not stack.', 9),
(59, 'Award-winning Chilli', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/61/FulliconAddon_award-winningChilli.png/64px-FulliconAddon_award-winningChilli.png?version=9b7a490f8246193c33aeaacbd9d2e5c8', 'Very rare', 'A big bowl of spicy Chilli made famous thanks to prime meat.\r\n\r\n-Tremendously increases acceleration when using the Chainsaw.\r\n\r\n-Considerably increases the time penalty when bumping into objects.', 9),
(60, 'Mouldy Electrode', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/7a/FulliconAddon_moldyElectrode.png/64px-FulliconAddon_moldyElectrode.png?version=114c6987e26f91445e5c19c1a373a381', 'Common', 'A mouldy electrode which can nevertheless conduct a weak electrical current.\r\n\r\n-Increases Shock Therapy attack range by 25 %.\r\n\r\n-Slightly increases Shock Therapy charge time.', 7),
(61, 'Maple Knight', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/9b/FulliconAddon_mapleKnight.png/64px-FulliconAddon_mapleKnight.png?version=5adeb65bd278a535f924c822a41cce3a', 'Common', 'A white knight chess piece made of maple. This gift from an old man brings back distant memories and imbues The Doctor with devastating focus.\r\n\r\n-Reveals Shock Therapy area of effect.\r\n', 7),
(62, '\"Order\" - Class I', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/e8/FulliconAddon_orderClassI.png/64px-FulliconAddon_orderClassI.png?version=59d47fce8985812e0c9b7328a136ed79', 'Common', 'A conventional ECT procedure, part of a patient\'s daily routine at the Léry\'s Memorial Institute. Can cause a state of mild confusion in the patient.\r\n\r\n -10 % increase in Madness inflicted by \r\n the Static Field.\r\n\r\nSurvivors with Madness II/III have the following affliction:\r\n\r\n -Broken Pallets may appear to be \r\n replaced with Illusionary Pallets that \r\n persist until approached.\r\n\r\n -Illusionary Pallets are generated \r\n every 20 seconds at the location of a \r\n broken Pallet within a range of 32 \r\n metres from The Doctor.\r\n\r\n -The Doctor shares in his patients\' \r\n Madness in order to read the Auras of \r\n Illusionary Pallets.\r\n \r\n -Afflictions of the same type do not \r\n stack.', 7),
(63, '\"Calm\" - Class I', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/9e/FulliconAddon_calmClassI.png/64px-FulliconAddon_calmClassI.png?version=f8dfbf94f6092accc7486688e846ff4b', 'Common', 'An ECT procedure using a deep wavelength that soothes various mental illnesses. With Carter\'s Spark as its source, this procedure can cause mild anxiety in the patient.\r\n\r\n -Slightly increases Terror Radius in \r\n Treatment mode.\r\n\r\n -Slightly decreases Terror Radius in \r\n Punishment mode.\r\n\r\nSurvivors with Madness II/III have the following affliction:\r\n\r\n -Considerable chance to play Terror \r\n Radius heartbeat for 15 seconds.\r\n\r\n -Afflictions of the same type do not \r\n stack.', 7),
(64, 'Scrapped Tape', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/7f/FulliconAddon_scrappedTape.png/64px-FulliconAddon_scrappedTape.png?version=8929bc3e5d66682537647b06de17b0a0', 'Uncommon', 'A compact cassette from Project Awakening containing mostly white noise. Opens The Doctor\'s mind to alternate treatment methods.\r\n\r\n-Shock Therapy area of effect becomes a ring 8 metres in front of The Doctor, with an outer radius of 4.2 metres and an inner radius of 3 metres. The actual area of effect is in-between those two radii.', 7),
(65, 'Polished Electrode', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/1a/FulliconAddon_polishedElectrode.png/64px-FulliconAddon_polishedElectrode.png?version=7f55b8289ccb5a82b65b4db18c7bb538', 'Uncommon', 'A like-new standard electrode equipment to conduct electro-convulsive treatments.\r\n\r\n-Increases Shock Therapy attack range by 50 %.\r\n\r\n-Moderately increases Shock Therapy charge time.', 7),
(66, 'Interview Tape', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/cb/FulliconAddon_interviewTape.png/64px-FulliconAddon_interviewTape.png?version=b034e453f54c37e36348cd8aaf77f5c0', 'Uncommon', 'A compact cassette from Project Awakening containing an un-edited interview of a victim. Opens The Doctor\'s mind to alternate treatment methods.\r\n\r\n-Shock Therapy area of effect becomes a beam with a 20m range and a 2m width.', 7),
(67, '\"Restraint\" - Class II', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/97/FulliconAddon_restraintClassII.png/64px-FulliconAddon_restraintClassII.png?version=ead98f2ff83bf435eb24154b7b11e71c', 'Uncommon', 'An experimental ECT procedure developed within the Fog. Uses a wavelength that links the patient\'s and Doctor\'s minds. This procedure is known to cause mild cases of hallucination in the patient.\r\n\r\n -Reveals Survivors\' Auras for 1 second \r\n when Madness increases.\r\n \r\nSurvivors with Madness have the \r\nfollowing affliction:\r\n\r\n -Madness II: Slightly increased \r\n duration for an Illusionary Doctor. Can \r\n be seen by The Doctor as an allied \r\n Aura.\r\n\r\n -Madness III: Moderately increased \r\n duration for an Illusionary Doctor. Can \r\n be seen by The Doctor as an allied \r\n Aura.\r\n\r\n-Afflictions of the same type do not \r\n stack.', 7),
(68, '\"Order\" - Class II', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/d8/FulliconAddon_orderClassII.png/64px-FulliconAddon_orderClassII.png?version=c82c13a201f6d3b2e283f2d3c675732e', 'Uncommon', 'A high stimulus ECT procedure, part of a patient\'s daily routine at the Léry\'s Memorial Institute. Can cause a state of moderate confusion in the patient.\r\n\r\n -15 % increase in Madness inflicted by \r\n the Static Field.\r\n\r\nSurvivors with Madness II/III have the following affliction:\r\n\r\n - Broken Pallets may appear to be \r\n replaced with Illusionary Pallets that \r\n persist until approached.\r\n\r\n -Illusionary Pallets are generated \r\n every 20 seconds at the location of a \r\n broken Pallet within a range of 64 \r\n metres from The Doctor.\r\n\r\n -The Doctor shares in his patients\' \r\n Madness in order to read the Auras of \r\n Illusionary Pallets.\r\n\r\n-Afflictions of the same type do not \r\n stack.', 7),
(69, '\"Discipline\" - Class II', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/e4/FulliconAddon_disciplineClassII.png/64px-FulliconAddon_disciplineClassII.png?version=84e7c45cb48cd6e84fe40c6861f0383d', 'Uncommon', 'Project Awakening ECT procedure for disciplinary action which uses a fixed dose at high voltage. Can cause a state of moderate paranoia in the patient.\r\n\r\n -15 % increase in Madness inflicted by \r\n Shock Therapy.\r\n\r\nSurvivors with Madness have the following affliction:\r\n\r\n -Madness II: When a chase begins, \r\n Survivors perceive the Red Stain and \r\n Terror Radius as though The Doctor were \r\n right behind them for a duration of 6 \r\n seconds.\r\n\r\n -Madness III: When a chase begins, \r\n Survivors perceive the Red Stain and \r\n Terror Radius as though The Doctor were \r\n right behind them for a duration of 12 \r\n seconds.\r\n\r\n -The Doctor shares in his patients\' \r\n Madness in order to see the Illusionary \r\n Red Stain.\r\n\r\n -Afflictions of the same type do not \r\n stack.', 7),
(70, '\"Calm\" - Class II', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/c/cb/FulliconAddon_calmClassII.png/64px-FulliconAddon_calmClassII.png?version=ba177d48602071b22d6d8d50e3adfd61', 'Uncommon', 'A risky ECT procedure using a deep wavelength that soothes various mental illnesses. With Carter\'s Spark as its source, this procedure can cause moderate anxiety in the patient.\r\n\r\n -Moderately increases Terror Radius in \r\n Treatment mode.\r\n\r\n -Moderately decreases Terror Radius in \r\n Punishment mode.\r\n\r\nSurvivors with Madness II/III have the following affliction:\r\n\r\n -Tremendous chance to play Terror \r\n Radius heartbeat for 20 seconds.\r\n\r\n -Afflictions of the same type do not \r\n stack.', 7),
(71, 'High Stimulus Electrode', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/35/FulliconAddon_highStimulusElectrode.png/64px-FulliconAddon_highStimulusElectrode.png?version=afc46df2c161795aabb488aecb95ccf1', 'Rare', 'An experimental electrode that can withstand very high charges for a longer period of time.\r\n\r\n-Increases Shock Therapy attack range by 75 %.\r\n\r\n-Considerably increases Shock Therapy charge time.', 7),
(72, '\"Restraint\" - Class III', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/e/e1/FulliconAddon_restraintClassIII.png/64px-FulliconAddon_restraintClassIII.png?version=32fe5e67226a8657cf4ec036ab0f0c7b', 'Rare', 'An experimental ECT procedure developed within the Fog. Uses a high stimulus wavelength to link the patient\'s and Doctor\'s minds. This procedure is known to cause serious cases of hallucinations in the patient.\r\n\r\n -Reveals Survivors\' Auras for 2 seconds \r\n when Madness increases.\r\n\r\nSurvivors with Madness have the \r\nfollowing affliction:\r\n\r\n -Madness II: Moderately increased \r\n duration for an Illusionary Doctor. Can \r\n be seen by The Doctor as an allied \r\n Aura.\r\n\r\n -Madness III: Considerably increased \r\n duration for an Illusionary Doctor. Can \r\n be seen by The Doctor as an allied \r\n Aura.\r\n\r\n -Afflictions of the same type do not \r\n stack.', 7),
(73, '\"Discipline\" - Class III', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/7a/FulliconAddon_disciplineClassIII.png/64px-FulliconAddon_disciplineClassIII.png?version=fefc5b750eb663826f3385a6f64582ad', 'Rare', 'Project Awakening ECT procedure for disciplinary action which uses a fixed dose at very high voltage. Can cause a state of serious paranoia in the patient.\r\n\r\n -20 % increase in Madness inflicted by \r\n Shock Therapy attack.\r\n\r\nSurvivors with Madness have the following affliction:\r\n\r\n -Madness II: When a chase begins, \r\n Survivors perceive the Red Stain and \r\n Terror Radius as though The Doctor were \r\n right behind them for a duration of 8 \r\n seconds.\r\n\r\n -Madness III: When a chase begins, \r\n Survivors perceive the Red Stain and \r\n Terror Radius as though The Doctor were \r\n right behind them for a duration of 16 \r\n seconds.\r\n \r\n -The Doctor shares in his patients\' \r\n Madness in order to see the Illusionary \r\n Red Stain.\r\n\r\n -Afflictions of the same type do not \r\n stack.', 7),
(74, '\"Restraint\" - Carter\'s Notes', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/94/FulliconAddon_restraintCartersNotes.png/64px-FulliconAddon_restraintCartersNotes.png?version=a84b857065185739e8723c1f3c549e86', 'Very Rare', 'An experimental ECT procedure developed within the Fog, crudely annotated. Uses an unbearable stimulus wavelength to link the patient\'s and Doctor\'s minds. This procedure is known to cause severe cases of hallucinations in the patient.\r\n\r\n -Reveals Survivors\' Auras for 3 seconds \r\n when Madness increases.\r\n\r\nSurvivors with Madness have the following affliction:\r\n\r\n -Madness II: Considerably increased \r\n duration for an Illusionary Doctor. Can \r\n be seen by The Doctor as an allied \r\n Aura.\r\n\r\n -Madness III: Tremendously increased \r\n duration for an Illusionary Doctor. Can \r\n be seen by The Doctor as an allied \r\n Aura.\r\n\r\n -Afflictions of the same type do not \r\n stack.', 7),
(75, '\"Order\" - Carter\'s Notes', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/a/ab/FulliconAddon_orderCartersNotes.png/64px-FulliconAddon_orderCartersNotes.png?version=8ed713f79efbda400bde6c488357c055', 'Very rare', 'An experimental version of the ECT procedure, annotated by Doctor Herman Carter himself The long, constant stimulus leaves the patient in a state of severe confusion.\r\n\r\n -25 % increase in Madness inflicted by \r\n the Static Field.\r\n\r\nSurvivors with Madness have the following affliction:\r\n\r\n -Broken Pallets may appear to be \r\n replaced with Illusionary Pallets that \r\n persist until approached.\r\n\r\n Illusionary Pallets are generated every \r\n 20 seconds at the location of a broken \r\n Pallet within an unlimited range of The \r\n Doctor.\r\n\r\n -The Doctor shares in his patients\' \r\n Madness in order to read the Auras of \r\n Illusionary Pallets.', 7),
(76, '\"Obedience\" - Carter\'s Notes', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/06/FulliconAddon_obedienceCartersNotes.png/64px-FulliconAddon_obedienceCartersNotes.png?version=64e5e8bfdb238d125a5c8345ecd41780', 'Very rare', 'An experimental ECT procedure developed within the Fog, crudely annotated. The extra surge of power causes extreme muscle tension which depletes the patient\'s energy.\r\n\r\n -2 second increase to Snap Out of It.\r\n\r\nSurvivors with Madness III have the following affliction:\r\n\r\n -Exhaustion\r\n\r\n -Afflictions of the same type do not \r\n stack.', 7),
(77, '\"Discipline\" - Carter\'s Notes', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/1a/FulliconAddon_disciplineCartersNotes.png/64px-FulliconAddon_disciplineCartersNotes.png?version=6a32790f230d5732add074a93f9667b2', 'Very rare', 'Project Awakening ECT procedure for disciplinary action, annotated by Doctor Herman Carter himself. The intolerably high voltage leaves the patient in a severe state of paranoia.\r\n\r\n -25 % increase in Madness inflicted by \r\n Shock Therapy attack.\r\n\r\nSurvivors with Madness have the \r\nfollowing affliction:\r\n\r\n -Madness II: When a chase begins, \r\n Survivors perceive the Red Stain and \r\n Terror Radius as though The Doctor were \r\n right behind them for a duration of 10 \r\n seconds.\r\n\r\n -Madness III: When a chase begins, \r\n Survivors perceive the Red Stain and \r\n Terror Radius as though The Doctor were \r\n right behind them for a duration of \r\n Madness III.\r\n\r\n-The Doctor shares in his patients\' \r\n Madness in order to see the Illusionary \r\n Red Stain.\r\n\r\n -Afflictions of the same type do not \r\n stack.', 7),
(78, '\"Calm\" - Carter\'s Notes', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/1a/FulliconAddon_calmCartersNotes.png/64px-FulliconAddon_calmCartersNotes.png?version=32c482e8e6ec54f4834d93c4a72fdd34', 'Vary rare', 'An experimental version of the ECT procedure annotated by Doctor Herman Carter himself. Uses a deep wavelength that soothes various mental illnesses. With Carter\'s Spark as its source, this procedure causes uncontrollable fear and anxiety in the patient.\r\n\r\n -Considerably increases Terror Radius \r\n in Treatment mode.\r\n\r\n -Considerably decreases Terror Radius \r\n in Punishment mode.\r\n\r\nSurvivors with Madness have the following affliction:\r\n\r\n -Madness II: Tremendous chance to play \r\n Terror Radius heartbeat for 20 seconds.\r\n\r\n -Madness III: Constantly plays Terror \r\n Radius heartbeat.\r\n\r\n -Afflictions of the same type do not \r\n stack.', 7),
(79, 'Iridescent King', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/f5/FulliconAddon_iridescentKing.png/64px-FulliconAddon_iridescentKing.png?version=2549428419e3f249f1b147f3cb22e50f', 'Ultra rare', 'A glass-like king chess piece moulded from The Fog itself. The Entity\'s trace reverberating within can break the most powerful minds.\r\n\r\n-Every time a Survivor receives a Shock Therapy attack, they gain an affliction chosen at random from the following list:\r\n\r\n -Iridescent Calm: Survivors hear a \r\n constant distant heartbeat.\r\n\r\n -Iridescent Discipline: When a chase \r\n begins, Survivor in Madness II perceive \r\n the Red Stain and Terror Radius as \r\n though The Doctor were right behind \r\n them for a duration of 10 seconds. This \r\n effect is always active for Survivors \r\n in Madness III.\r\n\r\n -Iridescent Obedience: In Madness III, \r\n Survivors suffer from Exhaustion.\r\n\r\n -Iridescent Order: Broken Pallets may \r\n appear to be replaced with Illusionary \r\n Pallets that persist until approached.\r\n\r\n -Iridescent Restraint: Tremendously \r\n increases the duration of Doctor \r\n Illusions.\r\n\r\n-Afflictions of the same type do not stack.', 7),
(80, 'Vegetable Oil', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/6b/FulliconAddon_vegetableOil.png/64px-FulliconAddon_vegetableOil.png?version=c41711cebb51a5e818922cf514cd101a', 'Common', 'A rancid oil used as a poor quality lubricant.\r\n\r\n-Slightly decreases the Chainsaw\'s cool-down.', 3),
(81, 'Spark Plug', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/df/FulliconAddon_sparkPlug.png/64px-FulliconAddon_sparkPlug.png?version=9aca3c3cc6d68642405fc8c03e7430b1', 'Common', 'A clean spark plug fitted for a Chainsaw.\r\n\r\n-Slightly decreases the Chainsaw\'s charge time.', 3),
(82, 'Chainsaw File', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/39/FulliconAddon_chainsawFile.png/64px-FulliconAddon_chainsawFile.png?version=8b3ce67b7f03cf953a8eddda890437b1', 'Common', 'A file whose purpose is to hone Chainsaw chains.\r\n\r\n-Slightly reduces the noise made by the Chainsaw.', 3),
(83, 'Spiked Boots', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/8f/FulliconAddon_spikedBoots.png/64px-FulliconAddon_spikedBoots.png?version=ca0680d183bc2796a12055258ccd55b9', 'Uncommon', 'Boots with metal spikes protruding from the soles, which provide more stability and control when walking on slippery soil.\r\n\r\n-Moderately increases steering while using the Chainsaw.', 3),
(84, 'Speed Limiter', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/f/fd/FulliconAddon_speedLimiter.png/64px-FulliconAddon_speedLimiter.png?version=3499bca6e4f556453a3632d122727826', 'Uncommon', 'A mechanical device that limits the amount of fuel small engines can intake at one time, forcing a constant and safe speed.\r\n\r\n-Chainsaw does not automatically trigger the Dying State.\r\n\r\n-Get 50 % more Bloodpoints for Chainsaw Score Events in the Deviousness Category.', 3),
(85, 'Shop Lubricant', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/5/5e/FulliconAddon_shopLubricant.png/64px-FulliconAddon_shopLubricant.png?version=8d4328ba43cd0c512af4a8d09a77fd12', 'Uncommon', 'An oil specifically formulated for Chainsaws. A special additive prevents oil throw off.\r\n\r\n-Moderately decreases the Chainsaw\'s cool-down.', 3),
(86, 'Primer Bulb', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/2/23/FulliconAddon_primerBulb.png/64px-FulliconAddon_primerBulb.png?version=6b673cd54dc1a24ddd3211908b84eb8e', 'Uncommon', 'Pumps more gas in the ignition system to ensure a quick and powerful start.\r\n\r\n-Moderately decreases the Chainsaw\'s charge time.', 3),
(87, 'Long Guide Bar', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/70/FulliconAddon_longGuideBar.png/64px-FulliconAddon_longGuideBar.png?version=35aca55462acae62e6a28001efaf128c', 'Uncommon', 'A sturdy iron replacement bar for long chains.\r\n\r\n-Slightly increases the reach of the Chainsaw attack.', 3),
(88, 'Homemade Muffler', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/b/b5/FulliconAddon_homemadeMuffler.png/64px-FulliconAddon_homemadeMuffler.png?version=603098f5d2da98b81dc18da5cce23f5d', 'Uncommon', 'A makeshift exhaust system made of black gas pipes.\r\n\r\n-Moderately reduces the noise made by the Chainsaw.', 3),
(89, 'Grisly Chains', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/0f/FulliconAddon_grislyChains.png/64px-FulliconAddon_grislyChains.png?version=5124be1fd32be77970ef4b85992255f9', 'Uncommon', 'A chain with unusually hefty cutter teeth that leaves victims crippled even after being healed.\r\n\r\n-Moderately decreases the Repair speed of Survivors injured by the Chainsaw for 90 seconds.\r\n\r\n-Does not stack.', 3),
(90, 'Depth Gauge Rake', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/3/38/FulliconAddon_depthGaugeRake.png/64px-FulliconAddon_depthGaugeRake.png?version=51651fccfa4e097a512152103116b994', 'Uncommon', 'Tool that increases the angle of the depth gauge, making the chain eat more \"wood\".\r\n\r\n-Moderately reduces the time penalty when bumping into objects.', 3),
(91, 'Death Engravings', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/1/1c/FulliconAddon_deathEngravings.png/64px-FulliconAddon_deathEngravings.png?version=046926c89213fd065252d330e37e7b15', 'Uncommon', 'Engravings found on the Chainsaw body counting the amount of lives it took. Fills the user with determination.\r\n\r\n-Slightly increases the Chainsaw\'s movement speed.\r\n\r\n-Slightly increases charge time.', 3),
(92, 'The Thompson\'s Mix	', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/7d/FulliconAddon_theThompsonsMix.png/64px-FulliconAddon_theThompsonsMix.png?version=0aba2acb780470a0f22b25a7a9d4cd02', 'Rare', 'A special oily substance used in the lubrication of all machinery concocted by the Thompson\'s themselves.\r\n\r\n-Considerably decreases the Chainsaw\'s cool-down.\r\n\r\n-Slightly decreases the Chainsaw\'s charge time.', 3),
(93, 'Rusted Chains', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/61/FulliconAddon_rustedChains.png/64px-FulliconAddon_rustedChains.png?version=0290fc39785aed3986a655b9988971b0', 'Rare', 'This chain is covered with crusty and volatile rust spots that make injuries particularly difficult to heal.\r\n\r\n-Survivors injured by the Chainsaw suffer considerably from the Mangled Status Effect.\r\n\r\n-Does not stack.', 3),
(94, 'Light Chassis', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/0/0e/FulliconAddon_lightChassis.png/64px-FulliconAddon_lightChassis.png?version=20539d873b4a1f8ad27cfe24a8bd4aa1', 'Rare', 'A light and durable Chainsaw chassis with a shorter guide bar. Makes the Chainsaw easier to handle.\r\n\r\n-Considerably reduces the time penalty when bumping into objects.', 3),
(95, 'Doom Engravings', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/9/94/FulliconAddon_doomEngravings.png/64px-FulliconAddon_doomEngravings.png?version=ecf235fbb60ea3656695f2584b6ebfab', 'Rare', 'Engravings found on the Chainsaw body representing the dark beast that lives in the Fog. Fills the user with determination.\r\n\r\n-Moderately increases the Chainsaw\'s movement speed.\r\n\r\n-Slightly increases charge time.', 3),
(96, 'Carburettor Tuning Guide', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/7/72/FulliconAddon_carburettorTuningGuide.png/64px-FulliconAddon_carburettorTuningGuide.png?version=5027000103ac61ad6677c01516de8f39', 'Rare', 'A crudely drawn guide to properly adjust and tune a Chainsaw carburetor.\r\nModerately decreases the Chainsaw\'s charge time.\r\n\r\n-Slightly decreases the Chainsaw\'s cool-down.\r\n\r\n-Slightly reduces the time penalty when bumping into objects.\r\n\r\n-Slightly reduces the noise made by the Chainsaw.', 3),
(97, 'Thompson\'s Moonshine', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/4/46/FulliconAddon_thompsonsMoonshine.png/64px-FulliconAddon_thompsonsMoonshine.png?version=a8b7d11d9fd062d2d51685ceb61881d2', 'Very Rare', 'A strong beverage made from corn and a recipe passed down in the Thompson\'s family. Instils rage and headache.\r\n\r\n-Tremendously increases steering while using the Chainsaw.\r\n\r\n-Considerably increases the time penalty when bumping into objects.', 3),
(98, 'Begrimed Chains', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/8/84/FulliconAddon_begrimedChains.png/64px-FulliconAddon_begrimedChains.png?version=60cdfc79354629c0e474d737cb02f4b5', 'Very Rare', 'This chain is stained with a foul substance that debilitates anyone it touches.\r\nModerately decreases the Repair speed on \r\n\r\n-Survivors injured by the Chainsaw.\r\n\r\n-Survivors injured by the Chainsaw suffer considerably from the Mangled Status Effect.\r\n\r\n-Does not stack.', 3),
(99, 'Wool Shirt', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/6/62/FulliconAddon_woolShirt.png/64px-FulliconAddon_woolShirt.png?version=fa2b7b6272b30d518cf02e15fcb04c2d', 'Common', 'A small boy\'s orange and yellow striped shirt. Identified with a sewn name tag to \"Jesse\".\r\nWhile Survivors are in the Dream World:\r\n\r\n-Slightly increases regression penalties on Sabotage, Healing and Repair actions.', 10),
(100, 'Sheep Block', 'https://gamepedia.cursecdn.com/deadbydaylight_gamepedia_en/thumb/d/dd/FulliconAddon_sheepBlock.png/64px-FulliconAddon_sheepBlock.png?version=14c251c9b88e1f56642eeff05ac49daf', 'Common\r\n', 'A white and blue wooden block depicting two woolly Lambs grazing and the letter \"S\".\r\n\r\n-Interacting with a Dream Trap afflicts Survivors with the Blindness Status Effect for 30 seconds.', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `killer_build`
--

CREATE TABLE `killer_build` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `killerId` int(11) DEFAULT NULL,
  `perk1Id` int(11) DEFAULT NULL,
  `perk2Id` int(11) DEFAULT NULL,
  `perk3Id` int(11) DEFAULT NULL,
  `perk4Id` int(11) DEFAULT NULL,
  `addon1Id` int(11) DEFAULT NULL,
  `addon2Id` int(11) DEFAULT NULL,
  `isF2P` tinyint(1) NOT NULL,
  `isNoob` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `killer_perks`
--

CREATE TABLE `killer_perks` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `killerId` int(11) DEFAULT NULL,
  `desc` text NOT NULL,
  `logo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `killer_perks`
--

INSERT INTO `killer_perks` (`id`, `name`, `killerId`, `desc`, `logo`) VALUES
(1, 'A Nurse\'s Calling', 4, 'Unlocks potential in one\'s Aura-reading ability.\r\n\r\nThe Auras of Survivors who are healing or being healed are revealed to you when they are within 20/24/28 metres of range.', 0),
(2, 'Agitation', 1, 'You get excited in anticipation of hooking your prey.\r\n\r\nIncreases your Movement Speed while transporting bodies by 6/12/18 %.\r\n\r\nWhile transporting a body, your Terror Radius is increased by 12 metres.', 0),
(3, 'Bamboozle', 12, 'Your vault speed is 5/10/15 % faster.\r\n\r\nPerforming a vault action calls upon The Entity IconHelp entity.png to block that vault location for 8/12/16 seconds.\r\n\r\nOnly 1 vault location may be blocked in this way at any given time. The vault location is blocked only for Survivors.\r\n\r\nBamboozle does not affect Pallets.', 0),
(4, 'Barbecue & Chilli', 9, 'A deep bond with The Entity IconHelp entity.png unlocks potential in one\'s Aura-reading ability.\r\n\r\nAfter hooking a Survivor, all other Survivors\' Auras IconHelp auras.png are revealed to you for 4 seconds when they are farther than 40 metres from the Hook.\r\n\r\nEach time a Survivor is hooked for the first time, gain a 25 % stack-able bonus to all Bloodpoint gains up to a maximum of 50/75/100 %.\r\nThe bonus Bloodpoints are only awarded post-Trial.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `power_addons`
--

CREATE TABLE `power_addons` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `logo` text NOT NULL,
  `killerId` int(11) NOT NULL,
  `rarity` text NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survivors`
--

CREATE TABLE `survivors` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `photo` text NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survivor_build`
--

CREATE TABLE `survivor_build` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `survivorId` int(11) DEFAULT NULL,
  `perk1Id` int(11) DEFAULT NULL,
  `perk2Id` int(11) DEFAULT NULL,
  `perk3Id` int(11) DEFAULT NULL,
  `perk4Id` int(11) DEFAULT NULL,
  `itemId` int(11) DEFAULT NULL,
  `addon1Id` int(11) DEFAULT NULL,
  `addon2Id` int(11) DEFAULT NULL,
  `isF2P` tinyint(1) NOT NULL,
  `isNoob` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survivor_perks`
--

CREATE TABLE `survivor_perks` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `survivorId` int(11) DEFAULT NULL,
  `desc` text NOT NULL,
  `photo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `password` varchar(300) COLLATE latin1_spanish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `created`) VALUES
(10, 'Elias', 'elias@gmail.com', '$2y$10$3FOyeLG4Sg2CvlCTLZNjpeMBGLveQKJGvPMRXOE/FcQeFW60FKj0G', '2019-09-24 10:03:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemType` (`itemType`),
  ADD KEY `itemType_2` (`itemType`),
  ADD KEY `itemType_3` (`itemType`),
  ADD KEY `itemType_4` (`itemType`);

--
-- Indices de la tabla `items_addons`
--
ALTER TABLE `items_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemId` (`itemType`);

--
-- Indices de la tabla `items_types`
--
ALTER TABLE `items_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `killers`
--
ALTER TABLE `killers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `killers_addons`
--
ALTER TABLE `killers_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `killerId` (`killerId`);

--
-- Indices de la tabla `killer_build`
--
ALTER TABLE `killer_build`
  ADD PRIMARY KEY (`id`),
  ADD KEY `killerId` (`killerId`,`perk1Id`,`perk2Id`,`perk3Id`,`perk4Id`,`addon1Id`,`addon2Id`);

--
-- Indices de la tabla `killer_perks`
--
ALTER TABLE `killer_perks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `killerId` (`killerId`);

--
-- Indices de la tabla `power_addons`
--
ALTER TABLE `power_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `killerId` (`killerId`);

--
-- Indices de la tabla `survivors`
--
ALTER TABLE `survivors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `survivor_build`
--
ALTER TABLE `survivor_build`
  ADD PRIMARY KEY (`id`),
  ADD KEY `killerId` (`survivorId`,`perk1Id`,`perk2Id`,`perk3Id`,`perk4Id`,`itemId`,`addon1Id`,`addon2Id`);

--
-- Indices de la tabla `survivor_perks`
--
ALTER TABLE `survivor_perks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survivorId` (`survivorId`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `items_addons`
--
ALTER TABLE `items_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `items_types`
--
ALTER TABLE `items_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `killers`
--
ALTER TABLE `killers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `killers_addons`
--
ALTER TABLE `killers_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `killer_build`
--
ALTER TABLE `killer_build`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `killer_perks`
--
ALTER TABLE `killer_perks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `power_addons`
--
ALTER TABLE `power_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survivors`
--
ALTER TABLE `survivors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survivor_build`
--
ALTER TABLE `survivor_build`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survivor_perks`
--
ALTER TABLE `survivor_perks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`itemType`) REFERENCES `items_types` (`id`);

--
-- Filtros para la tabla `items_addons`
--
ALTER TABLE `items_addons`
  ADD CONSTRAINT `items_addons_ibfk_1` FOREIGN KEY (`itemType`) REFERENCES `items_types` (`id`);

--
-- Filtros para la tabla `killers_addons`
--
ALTER TABLE `killers_addons`
  ADD CONSTRAINT `killers_addons_ibfk_1` FOREIGN KEY (`killerId`) REFERENCES `killers` (`id`);

--
-- Filtros para la tabla `killer_perks`
--
ALTER TABLE `killer_perks`
  ADD CONSTRAINT `killer_perks_ibfk_2` FOREIGN KEY (`killerId`) REFERENCES `killers` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Filtros para la tabla `survivor_perks`
--
ALTER TABLE `survivor_perks`
  ADD CONSTRAINT `survivor_perks_ibfk_1` FOREIGN KEY (`survivorId`) REFERENCES `survivors` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
