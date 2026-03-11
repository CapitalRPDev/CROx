import { fetchNui } from '../../utils/fetchNui';

const InventoryInfo: React.FC = () => {
  return (
    <div style={
      {
        position: 'absolute',
        display: 'flex',
        justifyContent: 'center',
        width: '100%',
        height: '100%',
        pointerEvents: 'none',
      }
    }>
       <div className='inventory-top-side'>
             <div className='responsive-side-1'></div>
             <div className='responsive-side-2'>
              <div className='top-left-side'>
{/*                   <div className='icon-box'>
                    <svg xmlns="http://www.w3.org/2000/svg" width=".925vw" height="5.3889vh" viewBox="0 0 12 15" fill="none">
                      <path d="M9 2.25V1.5C9 1.10218 8.84196 0.720644 8.56066 0.43934C8.27936 0.158035 7.89782 0 7.5 0H4.5C4.10218 0 3.72064 0.158035 3.43934 0.43934C3.15804 0.720644 3 1.10218 3 1.5V2.25C2.20435 2.25 1.44129 2.56607 0.87868 3.12868C0.31607 3.69129 0 4.45435 0 5.25V13.5C0 13.8978 0.158035 14.2794 0.43934 14.5607C0.720644 14.842 1.10218 15 1.5 15H10.5C10.8978 15 11.2794 14.842 11.5607 14.5607C11.842 14.2794 12 13.8978 12 13.5V5.25C12 4.45435 11.6839 3.69129 11.1213 3.12868C10.5587 2.56607 9.79565 2.25 9 2.25ZM4.5 1.5H7.5V2.25H4.5V1.5ZM6 5.25L7.5 6.75L6 8.25L4.5 6.75L6 5.25ZM10.5 10.5H3.75V12H3V10.5H1.5V9.75H10.5V10.5Z" fill="white"/>
                    </svg>
                  </div> */}
                  <div className='title-box'>
                    <div className='title-1'>CAPITAL RP
                      
                    </div>
                    
                  </div>
                </div>
             </div>
         </div>
    </div>
  )
};

export default InventoryInfo;
