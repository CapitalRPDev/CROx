import React, { useMemo } from 'react';

const colorChannelMixer = (colorChannelA: number, colorChannelB: number, amountToMix: number) => {
  let channelA = colorChannelA * amountToMix;
  let channelB = colorChannelB * (1 - amountToMix);
  return channelA + channelB;
};

const colorMixer = (rgbA: number[], rgbB: number[], amountToMix: number) => {
  let r = colorChannelMixer(rgbA[0], rgbB[0], amountToMix);
  let g = colorChannelMixer(rgbA[1], rgbB[1], amountToMix);
  let b = colorChannelMixer(rgbA[2], rgbB[2], amountToMix);
  return `rgb(${r}, ${g}, ${b})`;
};

const COLORS = {
  // Colors used - https://materialui.co/flatuicolors
  primaryColor: [218, 0, 0], // Red (Pomegranate)
  secondColor: [116, 0, 0], // Green (Nephritis)
  accentColor: [116, 0, 0], // Orange (Oragne)
};

const getRarityBarColor = (rarity?: string) => {
  switch (rarity) {
    case 'common':
      return 'rgb(98, 98, 98)'; // Common - gray
    case 'uncommon':
      return 'rgb(52, 158, 38)'; // Uncommon - green
    case 'rare':
      return 'rgb(31, 103, 171)'; // Rare - blue
    case 'epic':
      return 'rgb(163, 53, 238)'; // Epic - purple
    case 'legendary':
      return 'rgb(255, 128, 0)'; // Legendary - orange
    case 'special':
      return 'rgb(255, 255, 255)'; // Special - white
    default:
      return 'rgb(98, 98, 98)'; // Default - gray
  }
};

const WeightBar: React.FC<{ percent: number; durability?: boolean; rarity?: string }> = ({ percent, durability, rarity }) => {
  const color = useMemo(
    () =>
      durability
        ? percent < 50
          ? colorMixer(COLORS.accentColor, COLORS.primaryColor, percent / 100)
          : colorMixer(COLORS.secondColor, COLORS.accentColor, percent / 100)
        : percent > 50
        ? colorMixer(COLORS.primaryColor, COLORS.accentColor, percent / 100)
        : colorMixer(COLORS.accentColor, COLORS.secondColor, percent / 50),
    [durability, percent]
  );

  const rarityColor = rarity ? getRarityBarColor(rarity) : null;

  return (
    <div className={durability ? 'durability-bar' : 'weight-bar'}>
      <div
        style={{
          visibility: percent > 0 ? 'visible' : 'hidden',
          height: '100%',
          width: `${percent}%`,
          background: durability 
            ? rarityColor 
              ? `linear-gradient(90deg, ${rarityColor} 0%, ${rarityColor} 100%)`
              : `linear-gradient(90deg, ${color} 0%, ${color} 100%)`
            : 'linear-gradient(90deg, #A855F7  0%, #A855F7  100%)',
          boxShadow: durability 
            ? rarityColor
              ? `0px 0px 8px 0px ${rarityColor}80`
              : `0px 0px 8px 0px ${color}80`
            : '0px 0px 16px 0px rgba(168, 85, 247, 0.40)',
          transition: `background ${0.3}s ease, width ${0.3}s ease`,
        }}
      ></div>
    </div>
  );
};
export default WeightBar;
